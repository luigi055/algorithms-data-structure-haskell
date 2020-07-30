module Sort.QuickSpec (spec) where

import Test.Hspec
import Sort.Quick (quickSort)

spec :: Spec
spec = do
  describe "Testing quickSort function" $ do
    it "should sort [1,6,3,2,7,4] to [1,2,3,4,6,7]" $ do
      quickSort [1,6,3,2,7,4] `shouldBe` [1,2,3,4,6,7]
    
    it "should sort [False, True, True, False] to [False, False, True, True]" $ do
      quickSort [False, True, True, False] `shouldBe` [False, False, True, True]

    it "should sort \"Pedro La Rosa\" to \"  LPRaadeoors\"" $ do
      quickSort "Pedro La Rosa" `shouldBe` "  LPRaadeoors"