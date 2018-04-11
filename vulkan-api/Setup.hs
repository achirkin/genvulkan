{-# OPTIONS_GHC -Wall #-}

import           Data.List
import           Distribution.ModuleName            (components)
import           Distribution.PackageDescription
import           Distribution.Simple
import           Distribution.Simple.LocalBuildInfo
import           Distribution.Simple.Setup
import           Distribution.Simple.Utils          (setupMessage)

main :: IO ()
main = defaultMainWithHooks simpleUserHooks { buildHook = buildInChunks (buildHook simpleUserHooks) }


-- | vulkan-api has a lot of modules.
--   The modules build up into a really long command line passed to GHC,
--   which causes Windows build to crash with
--     @createProcess: does not exist (No such file or directory)@ error message.
--   To workaround this problem, I split the build command into several pieces.
buildInChunks :: (PackageDescription -> LocalBuildInfo -> UserHooks -> BuildFlags -> IO ())
              -> PackageDescription -> LocalBuildInfo -> UserHooks -> BuildFlags -> IO ()
buildInChunks
  origBuildHook
  pDesc@PackageDescription
    { library = Just lib@Library
      { exposedModules = modulesAll
      }
    }
  locBI uHooks bflags = do
    myBuildHook locBINoExposedMods modulesBase
    myBuildHook locBINoExposedMods modulesEnums
    myBuildHook locBINoExposedMods modulesStruct
    myBuildHook locBINoExposedMods modulesExt
    myBuildHook locBI              modulesRest
  where
    -- remove exposedModules from the library info for all but last build passes
    locBINoExposedMods
      = locBI { componentsConfigs = map removeExposedModules (componentsConfigs locBI)}
    removeExposedModules (n, c@LibComponentLocalBuildInfo{}, ns)
      = (n, c{componentExposedModules = []}, ns)
    removeExposedModules x = x

    -- only compile listed modules
    withMods ms = pDesc {library = Just lib{exposedModules = ms}}

    (modulesMarshal,   modulesRest0) = partition (isMarshalModule . components) modulesAll
    (modulesEnums,     modulesRest1) = partition (isEnumModule . components) modulesRest0
    (modulesStruct,    modulesRest2) = partition (isStructModule . components) modulesRest1
    (modulesBaseTypes, modulesRest3) = partition (isBaseTypesModule . components) modulesRest2
    (modulesExt,       modulesRest ) = partition (isExtModule . components) modulesRest3
    modulesBase = modulesMarshal ++ modulesBaseTypes

    myBuildHook lbi ms = do
      setupMessage (fromFlag (buildVerbosity bflags))
                   ("Building " ++ show (length ms) ++ " modules")
                   (packageId pDesc)
      origBuildHook (withMods ms) lbi uHooks bflags

    isMarshalModule = isPrefixOf ["Graphics", "Vulkan", "Marshal"]
    isEnumModule ["Graphics","Vulkan","Types","Bitmasks"] = True
    isEnumModule xs = ["Graphics", "Vulkan", "Types", "Enum"] `isPrefixOf` xs
    isStructModule = isPrefixOf ["Graphics", "Vulkan", "Types", "Struct"]
    isExtModule = isPrefixOf ["Graphics", "Vulkan", "Ext"]
    isBaseTypesModule ["Graphics", "Vulkan", "Types", "Funcpointers"] = False -- depends on some structs
    isBaseTypesModule xs = ["Graphics", "Vulkan", "Types"] `isPrefixOf` xs


buildInChunks origBuildHook pDesc locBI uHooks bflags
  = origBuildHook pDesc locBI uHooks bflags
