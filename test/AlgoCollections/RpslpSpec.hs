module AlgoCollections.RpslpSpec (spec) where

import AlgoCollections.Rpslp (rpslp)
import Test.Hspec
import Text.Printf (printf)

playsAgainst :: String -> String -> String -> Spec
playsAgainst player1 player2 expected =
    it (printf "should play %s against %s and return %s" player1 player2 expected) $
        rpslp player1 player2 `shouldBe` expected

spec :: Spec
spec = do
  describe "Testing rpslp function" $ do
      ("rock" `playsAgainst` "spock") "Player 2 won!"
      ("scissor" `playsAgainst` "lizard") "Player 1 won!"
      ("scissor" `playsAgainst` "Scissor") "Draw!"
      ("foo" `playsAgainst` "Bar") "Oh, Unknown Thing"
      ("rock" `playsAgainst` "spock") "Player 2 won!"
      ("spock" `playsAgainst` "rock") "Player 1 won!"
      ("spock" `playsAgainst` "spock") "Draw!"
      ("spocky" `playsAgainst` "spocky") "Oh, Unknown Thing"
      ("spock" `playsAgainst` "lizard") "Player 2 won!"
      ("spock" `playsAgainst` "lizeard") "Oh, Unknown Thing"
      ("spsock" `playsAgainst` "lizeard") "Oh, Unknown Thing"
      ("spsock" `playsAgainst` "lizard") "Oh, Unknown Thing"
      ("PaPER" `playsAgainst` "liZaRd") "Player 2 won!"