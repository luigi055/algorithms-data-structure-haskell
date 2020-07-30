module Sort.SelectionSpec (spec) where

import Test.Hspec
import Sort.Selection (selectionSort)

spec :: Spec
spec = do
  describe "Testing selectionSort function" $ do
    it "should sort [1,6,3,2,7,4] to [1,2,3,4,6,7]" $ do
      selectionSort [1,6,3,2,7,4] `shouldBe` [1,2,3,4,6,7]
    
    it "should sort [False, True, True, False] to [False, False, True, True]" $ do
      selectionSort [False, True, True, False] `shouldBe` [False, False, True, True]

    it "should sort \"Pedro La Rosa\" to \"  LPRaadeoors\"" $ do
      selectionSort "Pedro La Rosa" `shouldBe` "  LPRaadeoors"