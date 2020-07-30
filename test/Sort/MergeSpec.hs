module Sort.MergeSpec (spec) where

import Test.Hspec
import Sort.Merge (mergeSort)

spec :: Spec
spec = do
  describe "Testing mergeSort function" $ do
    it "should sort [1,6,3,2,7,4] to [1,2,3,4,6,7]" $ do
      mergeSort [1,6,3,2,7,4] `shouldBe` [1,2,3,4,6,7]
    
    it "should sort [False, True, True, False] to [False, False, True, True]" $ do
      mergeSort [False, True, True, False] `shouldBe` [False, False, True, True]

    it "should sort \"Pedro La Rosa\" to \"  LPRaadeoors\"" $ do
      mergeSort "Pedro La Rosa" `shouldBe` "  LPRaadeoors"