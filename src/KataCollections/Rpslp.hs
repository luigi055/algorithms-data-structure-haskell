module KataCollections.Rpslp (rpslp) where

import Data.Char (toLower)

rpslp :: String -> String -> String
rpslp playerOneOption playerTwoOption
  | playerOneNormalized `hasDefeatedTo` playerTwoNormalized = "Player 1 won!"
  | playerTwoNormalized `hasDefeatedTo` playerOneNormalized = "Player 2 won!"
  | hasEmptyRules = "Oh, Unknown Thing"
  | otherwise = "Draw!"
    where hasDefeatedTo :: String -> String -> Bool
          hasDefeatedTo item toCompare = (0<) . length $ filter (toCompare==) (getRuleByItem item)
          hasEmptyRules = (null $ getRuleByItem playerOneNormalized) || (null $ getRuleByItem playerTwoNormalized)
          playerOneNormalized = map (toLower) playerOneOption
          playerTwoNormalized = map (toLower) playerTwoOption

getRuleByItem item
  | item == spock = [scissor, rock]
  | item == lizard = [spock, paper]
  | item == rock = [lizard, scissor]
  | item == paper = [rock , spock]
  | item == scissor = [paper , lizard]
  | otherwise = []
    where spock = "spock"
          lizard = "lizard"
          scissor = "scissor"
          rock = "rock"
          paper = "paper"


