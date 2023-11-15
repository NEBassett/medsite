{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell   #-}
{-# LANGUAGE TypeFamilies      #-}
{-# LANGUAGE ViewPatterns      #-}
module Foundation where

import           Language.Haskell.TH.Quote (QuasiQuoter, quoteFile)
import           Text.Shakespeare.Text     (st)
import Yesod.Core
import Yesod.Static

data App = App {getStatic :: Static}

staticFiles "static"

mkYesodData "App" $(parseRoutesFileNoCheck "routes.yesodroutes")

instance Yesod App
