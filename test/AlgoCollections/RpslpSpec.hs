module AlgoCollections.RpslpSpec (spec) where

import AlgoCollections.Rpslp (rpslp)
import Test.Hspec

spec :: Spec
spec = do
  describe "Testing rpslp function" $ do
    it "spock kills rock" $ do
      rpslp "rock" "spock" `shouldBe` "Player 2 won!"
      rpslp "spock" "rock" `shouldBe` "Player 1 won!"
      rpslp "spock" "spock" `shouldBe` "Draw!"
      rpslp "spocky" "spocky" `shouldBe` "Oh, Unknown Thing"
      rpslp "spock" "lizard" `shouldBe` "Player 2 won!"
      rpslp "spock" "lizeard" `shouldBe` "Oh, Unknown Thing"
      rpslp "spsock" "lizeard" `shouldBe` "Oh, Unknown Thing"
      rpslp "spsock" "lizard" `shouldBe` "Oh, Unknown Thing"
      rpslp "PaPER" "liZaRd" `shouldBe` "Player 2 won!"