{-# LANGUAGE CPP                   #-}
{-# LANGUAGE FlexibleContexts      #-}
{-# LANGUAGE LambdaCase            #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE StrictData            #-}
-- | Provide a `Program` monad to execute vulkan actions, carry state,
--   manage allocated resources, and process exceptions.
--
--   Note the strictness: we don't want to pile up unevaluated thunks in
--   the program state, but @Strict@ pragma would ruin continuation monad;
--   thus, we have to keep a careful balance between strict and lazy functions.
module Lib.Program
    ( Program (..), Program', runProgram
    , MonadIO (..)
      -- * Resource management
    , allocResource, locally
      -- * State manipulation
    , ProgramState (..), MonadState (..), modify, modify', gets
      -- * Exception handling
    , VulkanException (..), MonadError (..), runVk
    , try, bracket, finally, throwVkMsg
      -- * Logging
    , logDebug, logInfo, logWarn, logError
      -- * Development build and debugging
    , isDev, inDev
      -- * Vulkan marshal utilies
    , liftIOWith, withVkPtr
    ) where


import           Control.Exception              (Exception)
import qualified Control.Exception              as Exception
import           Control.Monad
import           Control.Monad.Error.Class
import           Control.Monad.IO.Class
import qualified Control.Monad.Logger           as Logger
import qualified Control.Monad.Logger.CallStack as LoggerCS
import           Control.Monad.State.Class
import           Data.IORef
import           Data.String                    (fromString)
import           Data.Tuple                     (swap)
import           GHC.Stack
import           Graphics.Vulkan


data ProgramState
  = ProgramState
  { currentStatus :: VkResult
    -- ^ Result of the last vulkan command.
    --   We may need it to check if result is some non-zero non-error code.
  , loggingFunc   :: Logger.Loc
                  -> Logger.LogSource
                  -> Logger.LogLevel
                  -> Logger.LogStr -> IO ()
    -- ^ Enable monad-logger.
  }

iProgState :: IO ProgramState
iProgState = do
  -- get logger function from Control.Monad.Logger transformer
  logFun <- Logger.runStdoutLoggingT $ Logger.LoggingT pure
  return ProgramState
    { currentStatus = VK_SUCCESS
    , loggingFunc   = logFun
    }

-- | Program is modelled as a combination of several transformers:
--
--   * ReaderT + IORef to model state
--   * ContT for exception handling and careful resource management
--   * ExceptT for exception handling
newtype Program r a = Program
  { unProgram :: IORef ProgramState
              -> (Either VulkanException a -> IO r) -> IO r }

-- | A common case when program parameter @r@ is restricted to be
--   either conter of the monad or an error.
type Program' a = Program (Either VulkanException a) a


runProgram :: (Either VulkanException a -> IO r)
           -> Program r a -> IO r
runProgram c p = iProgState >>= newIORef >>= flip (unProgram p) c


-- | Allocate some resource and return it,
--   free that resource after the continuation is executed.
--
--   If exception happens during allocation, the freeing does not happen.
--
allocResource :: (a -> Program' ()) -- ^ free resource
              -> Program r a -- ^ allocate resource
              -> Program r a
allocResource free alloc = Program $ \ref c ->
  unProgram alloc ref $ \case
    Left e -> c (Left e)
    Right a -> c (Right a) >>= \r -> r <$ unProgram (free a) ref pure


-- | Run nested continuations locally:
--     fully execute the program in IO;
--     all allocated resources are released before this function returns.
--
--   Note: this means none of the resources allocated in the nested program
--         can be used outside of it! Never return them from `locally`!
locally :: Program' a
        -> Program r a
locally p = Program $ \ref c -> unProgram p ref pure >>= c

instance Functor (Program r) where
  fmap f p = Program $ \ref c -> unProgram p ref (c . fmap f)

instance Applicative (Program r) where
  pure x = Program $ const ($ Right x)
  pf <*> px = Program $
    \ref c -> unProgram pf ref $ \g -> unProgram px ref (c . (g <*>) )

instance Monad (Program r)  where
  return = pure
  px >>= k = Program $
    \ref c -> unProgram px ref $ \case
      Right x -> unProgram (k x) ref c
      Left e  -> c (Left e)

instance MonadIO (Program r) where
  liftIO m = Program $ const (Right <$> m >>=)

instance MonadState ProgramState (Program r) where
  get = Program $ \ref -> (Right <$> readIORef ref >>=)
  put s = Program $ \ref -> (Right <$> writeIORef ref s >>=)
  state f = Program $ \ref -> (Right <$> atomicModifyIORef' ref (swap . f) >>=)


-- | Use this to throw all exceptions in this project
data VulkanException
  = VulkanException
  { vkeCode    :: Maybe VkResult
  , vkeMessage :: String
  } deriving (Eq, Show, Read)

instance Exception VulkanException where
  displayException (VulkanException Nothing msg)
    = unlines
    [ ""
    , "Vulkan exception:"
    , "*** " ++ msg
    ]
  displayException (VulkanException (Just c) msg)
    = unlines
    [ ""
    , "Vulkan error: " ++ show c
    , "*** " ++ msg
    ]

instance MonadError VulkanException (Program r) where
  throwError e = Program $ const ($ Left e)
  catchError px catcher = Program $ \ref c -> unProgram px ref $ \case
    Left e  -> unProgram (catcher e) ref c
    Right r -> c (Right r)


-- | Throw VulkanException without error code
throwVkMsg :: HasCallStack => String -> Program r a
throwVkMsg msg = throwError . VulkanException Nothing $ unlines
  [ msg
  , prettyCallStack callStack
  ]



-- | An adaptation of @bracket@ from `Control.Exception`.
--
--   This does not handle vanilla Haskell exceptions, and should only be used
--   to catch the exception defined in this module.
bracket :: Program r a        -- ^ computation to run first (\"acquire resource\")
        -> (a -> Program r b) -- ^ computation to run last (\"release resource\")
        -> (a -> Program r c) -- ^ computation to run in-between
        -> Program r c        -- returns the value from the in-between computation
bracket before after thing = do
  a <- before
  er <- try (thing a)
  _ <- after a
  Program $ const ($ er)


-- | A specialised variant of 'bracket' with just a computation to run
--   afterward.
--
--  An adaptation of @finally@ from `Control.Exception`
--
--   This does not handle vanilla Haskell exceptions, and should only be used
--   to catch the exception defined in this module.
finally :: Program r a  -- ^ computation to run first
        -> Program r b  -- ^ computation to run afterward (even if an exception
                        -- was raised)
        -> Program r a  -- returns the value from the first computation
finally a sequel = do
  er <- try a
  _ <- sequel
  Program $ const ($ er)


-- | An adaptation of @try@ from `Control.Exception`
--
--   This does not handle vanilla Haskell exceptions, and should only be used
--   to catch the exception defined in this module.
try :: Program r a -> Program r (Either VulkanException a)
try a = Program $ \ref c -> unProgram a ref $ c . Right


-- | Run vulkan command, throwing an exception if its result is an error.
runVk :: HasCallStack => IO VkResult -> Program r ()
runVk action = do
  r <- liftIO action
  state $ \s -> ((), s { currentStatus = r })
  when (r < 0) . throwError . VulkanException (Just r)
    $ "Vulkan command returned an error VkResult\n"
    ++ prettyCallStack callStack


instance Logger.MonadLogger (Program r) where
  monadLoggerLog loc ls ll msg = do
    logFun <- gets loggingFunc
    liftIO $ logFun loc ls ll (Logger.toLogStr msg)


logDebug :: HasCallStack => String -> Program r ()
#ifdef DEVELOPMENT
logDebug = LoggerCS.logDebug . fromString
#else
logDebug = const (pure ())
#endif
{-# INLINE logDebug #-}

logInfo :: HasCallStack => String -> Program r ()
logInfo = LoggerCS.logInfo . fromString
{-# INLINE logInfo #-}

logWarn :: HasCallStack => String -> Program r ()
logWarn = LoggerCS.logWarn . fromString
{-# INLINE logWarn #-}

logError :: HasCallStack => String -> Program r ()
logError = LoggerCS.logError . fromString
{-# INLINE logError #-}


isDev :: Bool
#ifdef DEVELOPMENT
isDev = True
#else
isDev = False
#endif
{-# INLINE isDev #-}

inDev :: Applicative m => m () -> m ()
#ifdef DEVELOPMENT
inDev = id
#else
inDev = const (pure ())
#endif
{-# INLINE inDev #-}


-- | Run an IO action with a callback in Program monad
liftIOWith :: ((a -> IO (Either VulkanException b))
                    -> IO (Either VulkanException b)
              )
           -> (a -> Program' b) -> Program r b
liftIOWith iof pf = Program $ \ref c ->
  iof (\a -> unProgram (pf a) ref pure) >>= c


withVkPtr :: VulkanMarshal a
          => a
          -> (Ptr a -> Program' b)
          -> Program r b
withVkPtr x = liftIOWith (withPtr x)