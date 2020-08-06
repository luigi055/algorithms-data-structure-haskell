module DataStructures.BinarySearchTreeSpec (spec) where

import DataStructures.BinarySearchTree
import Test.Hspec

spec :: Spec
spec = do
  describe "Testing Binary Search Tree Data Structure" $ do
    it "should check if BST is empty" $ do
      (isEmpty $ singleton 5) `shouldBe` False
      isEmpty Empty `shouldBe` True

    it "should create a singleton with the root node" $ do
      (singleton 12) `shouldBe` Node 12 Empty Empty

    it "should create a singleton with the root node using insert" $ do
      (insert 12 Empty `shouldBe` Node 12 Empty Empty)

    it "should insert a second value to the right if the new value is greater than the root" $ do
      (insert 20 (singleton 12)) `shouldBe` Node 12 Empty (Node 20 Empty Empty)

    it "should insert a second value to the left when the new value is smaller than the root" $ do
      (insert 9 (singleton 12)) `shouldBe` Node 12 (Node 9 Empty Empty) Empty

    it "should add 2 values to the root and the greater number should be placed to the right and the smaller to the left" $ do
      (insert 3 (insert 15 (singleton 12))) `shouldBe` Node 12 (Node 3 Empty Empty) (Node 15 Empty Empty)

    it "should add the fourth number to the right of the firts left's child" $ do
      (insert 4 (insert 3 (insert 15 (singleton 12)))) `shouldBe` Node 12 (Node 3 Empty (Node 4 Empty Empty)) (Node 15 Empty Empty)

    it "should add the fourth number to the left of the firts left's child" $ do
      (insert 2 (insert 3 (insert 15 (singleton 12)))) `shouldBe` Node 12 (Node 3 (Node 2 Empty Empty) Empty) (Node 15 Empty Empty)

    it "should add the fourth number to the left of the firts right's child" $ do
      (insert 13 (insert 3 (insert 15 (singleton 12)))) `shouldBe` Node 12 (Node 3 Empty Empty) (Node 15 (Node 13 Empty Empty) Empty)

    it "should add the fourth number to the right of the firts right's child" $ do
      (insert 18 (insert 3 (insert 15 (singleton 12)))) `shouldBe` Node 12 (Node 3 Empty Empty) (Node 15 Empty (Node 18 Empty Empty))

    it "should stay the same if try to insert a repeated value" $ do
      (insert 15 (insert 3 (insert 15 (singleton 12)))) `shouldBe` Node 12 (Node 3 Empty Empty) (Node 15 Empty Empty)

    it "should return True if the BST contains the specified value" $ do
      (3 `isElemOf` insert 15 (insert 3 (insert 15 (singleton 12)))) `shouldBe` True
      (15 `isElemOf` insert 15 (insert 3 (insert 15 (singleton 12)))) `shouldBe` True
      (12 `isElemOf` insert 15 (insert 3 (insert 15 (singleton 12)))) `shouldBe` True

    it "should return False if the BST doesn't contains the specified value" $ do
      (4 `isElemOf` insert 18 (insert 3 (insert 15 (singleton 12)))) `shouldBe` False

    it "should get the leftest value on the tree" $ do
      (leftestElement $ insert 2 (insert 3 (insert 15 (singleton 12)))) `shouldBe` 2

    it "should get the rightest value on the tree" $ do
      (rightestElement $ insert 2 (insert 3 (insert 15 (singleton 12)))) `shouldBe` 15

    it "should add the fourth number to the right of the firts right's child" $ do
      (fromList [12, 15, 3, 18]) `shouldBe` Node 12 (Node 3 Empty Empty) (Node 15 Empty (Node 18 Empty Empty))

    describe "Testing Deletion" $ do
      it "should delete the root element" $ do 
        (deleteRoot $ fromList [12, 15, 3]) `shouldBe` Node 15 (Node 3 Empty Empty) (Node 15 Empty Empty)

      it "should delete the root element and return an empty BST if it had only one element" $ do 
        (deleteRoot $ fromList [12]) `shouldBe` Empty

      it "should delete the only one element when using delete Node" $ do
        delete 5 (fromList [5]) `shouldBe` Empty

      it "should delete a node in the Tree" $ do
        delete 23 (fromList [5, 6, 23, 50, 4, 12])
          `shouldBe` Node 5 (Node 4 Empty Empty) (Node 6 Empty (Node 50 (Node 12 Empty Empty) (Node 50 Empty Empty)))