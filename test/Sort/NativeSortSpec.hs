module Sort.NativeSortSpec (spec) where

import Test.Hspec
import Data.List (sort)

spec :: Spec
spec = do
  describe "Testing Native Haskell sort function" $ do
    it "should sort [1,6,3,2,7,4] to [1,2,3,4,6,7]" $ do
      sort [1,6,3,2,7,4] `shouldBe` [1,2,3,4,6,7]

    it "should sort [False, True, True, False] to [False, False, True, True]" $ do
      sort [False, True, True, False] `shouldBe` [False, False, True, True]

    it "should sort \"Pedro La Rosa\" to \"  LPRaadeoors\"" $ do
      sort "Pedro La Rosa" `shouldBe` "  LPRaadeoors"