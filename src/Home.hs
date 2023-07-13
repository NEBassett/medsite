{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE QuasiQuotes       #-}
module Home where

import Foundation
import Yesod.Core

getHomeR :: Handler Html
getHomeR = defaultLayout $ do
    setTitle "Minimal Multifile"
    toWidget [lucius|
           @import url('https://fonts.googleapis.com/css?family=Open+Sans');
           
           h1 {
               font-family: "Open Sans", sans-serif;
               font-size: 14px;
               text-align: center;
               position: fixed;
               top: 50%;
               left: 50%;
               transform: translate(-50%, -50%);
           }
           
           p {
               font-family: "Open Sans", sans-serif;
               text-align: center;
               font-size: 12px;
           }
    |]
    [whamlet|
        <h1> Bayside Medical Practice of Vilano Beach, LLC;
            <p> Primary practice headed by Tammy Dye. Contact us: tammydye@baysidemedical.net
            <p> Coming soon to 101 Yacht Club Drive, St Augustine FL, 32084
    |]
