{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE QuasiQuotes       #-}
module Home where

import Foundation
import Yesod.Core

getHomeR :: Handler Html
getHomeR = defaultLayout $ do
    setTitle "Bayside Medical"
    toWidget [lucius|
           @import url('https://fonts.googleapis.com/css?family=Open+Sans');
           @import url('https://fonts.googleapis.com/css2?family=Roboto+Condensed:wght@300&display=swap');
           
           .bg-image {
               /* The image used */
               background-image: url("https://cdn.discordapp.com/attachments/1004853212022587514/1129238834253668392/dhh.png");
               
               /* Add the blur effect */
               filter: blur(8px);
               -webkit-filter: blur(8px);
               
               /* Full height */
               height: 100%;
               
               /* Center and scale the image nicely */
               background-position: center;
               background-repeat: no-repeat;
               background-size: cover;
           }
           
           highlight {
              background-color: rgba(210,228,242, 0.25);
           }

           h1 {
               color: white; 
               font-family: 'Roboto Condensed', sans-serif;
               font-size: 50px;
               text-align: center;
               position: fixed;
               top: 50%;
               left: 50%;
               transform: translate(-50%, -50%);
               z-index: 2;
               text-shadow: 2px 2px 2px rgba(30,30,30,0.32);
           }
           
           p {
               color:rgb(210,228,242);
               font-family: 'Roboto Condensed', sans-serif;
               text-align: center;
               font-size: 33px;
               z-index: 2;
               text-shadow: 2px 2px 2px rgba(30,30,30,0.32);
               margin: 5px;
               
           }
           
           html, body{ width:100%; height:100%;}
    |]
    [whamlet|
         <script src="https://kit.fontawesome.com/59b096c1bd.js" crossorigin="anonymous"> 
         <div class="bg-image"> 
         <h1> Bayside Medical Practice of Vilano Beach, LLC
              <p style="padding-top:30px;"> Primary practice headed by Tammy Dye.
              <p> Contact us: <highlight>tammydye@baysidemedical.net
              <p> Coming soon to 101 Yacht Club Drive, St Augustine FL, 32084
              <i class="fa-solid fa-circle-nodes fa-spin" style="color: #d1edfe;"></i>
    |]
