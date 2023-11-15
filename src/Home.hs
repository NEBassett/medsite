#!/usr/bin/env stack
{- stack
     --resolver lts-8.17
     --install-ghc
     runghc
     --package yesod
     --package yesod-static
 -}

{-# LANGUAGE OverloadedStrings, TypeFamilies, QuasiQuotes,
             TemplateHaskell, GADTs, FlexibleContexts,
             MultiParamTypeClasses, DeriveDataTypeable,
             GeneralizedNewtypeDeriving, ViewPatterns #-}
module Home where

import Foundation
import Yesod
import Yesod.Core
import Yesod.Static
import Text.Blaze.Html (preEscapedToHtml)
import Text.Lucius (CssUrl, luciusFile, luciusFileReload, renderCss, ToCss)
import           Language.Haskell.TH.Quote (QuasiQuoter, quoteFile)
import           Text.Shakespeare.Text     (st)

--staticFiles "static"

--myWidget = toWidget . preEscapedToHtml $ [stFile|index.html|]
  
-- getStaticR :: Handler Html
-- getStaticR = defaultLayout $ do
--   setTitle "Bayside Medical"
--   myWidget

