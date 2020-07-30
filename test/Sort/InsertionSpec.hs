module Sort.InsertionSpec (spec) where

import Test.Hspec
import Sort.Insertion (insertionSort)

spec :: Spec
spec = do
  describe "Testing insertionSort function" $ do
    it "should sort [1,6,3,2,7,4] to [1,2,3,4,6,7]" $ do
      insertionSort [1,6,3,2,7,4] `shouldBe` [1,2,3,4,6,7]
    
    it "should sort [False, True, True, False] to [False, False, True, True]" $ do
      insertionSort [False, True, True, False] `shouldBe` [False, False, True, True]

    it "should sort \"Pedro La Rosa\" to \"  LPRaadeoors\"" $ do
      insertionSort "Pedro La Rosa" `shouldBe` "  LPRaadeoors"