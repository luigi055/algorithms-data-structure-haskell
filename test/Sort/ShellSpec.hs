module Sort.ShellSpec (spec) where

import Test.Hspec
import Sort.Shell (shellSort)

spec :: Spec
spec = do
  describe "Testing shellSort function" $ do
    it "should sort [1,6,3,2,7,4] to [1,2,3,4,6,7]" $ do
      shellSort [1,6,3,2,7,4] `shouldBe` [1,2,3,4,6,7]
    
    it "should sort [False, True, True, False] to [False, False, True, True]" $ do
      shellSort [False, True, True, False] `shouldBe` [False, False, True, True]

    it "should sort \"Pedro La Rosa\" to \"  LPRaadeoors\"" $ do
      shellSort "Pedro La Rosa" `shouldBe` "  LPRaadeoors"