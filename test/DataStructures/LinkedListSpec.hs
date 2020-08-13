module DataStructures.LinkedListSpec (spec) where

import DataStructures.LinkedList
import Test.Hspec

spec :: Spec
spec = do
  describe "Testing Linked List module" $ do
    describe "Linked List Creation" $ do
      it "should convert a list of element to a LinkedList" $ do
        fromList [4,2,5,7] `shouldBe` Node 4 (Node 2 (Node 5 (Node 7 Empty)))

      it "should convert an linked list to a List" $ do
        toList (Node 4 (Node 2 (Node 5 (Node 7 Empty)))) `shouldBe` [4,2,5,7]

    describe "Linked List search" $ do
      it "should get the head of a Linked list" $ do
        (getHead $ fromList [4,2,5,7]) `shouldBe` 4

      it "should throw and error if try to find the head of an empty linked list" $ do
        getHead Empty `shouldThrow` errorCall "Empty Linked List"

      it "should get the tail of a linked list" $ do
        (getTail $ fromList [4,2,5,7]) `shouldBe` Node 2 (Node 5 (Node 7 Empty))

      it "should get the last element" $ do
        (getLast $ fromList [4,2,5,7]) `shouldBe` 7

      it "should throw and error when try to get the last element of an empty linked list" $ do
        getLast Empty `shouldThrow` errorCall "empty Linked List"

      it "should find the third element of the Linked List" $ do
        findByIndex 2 (Node 4 (Node 2 (Node 5 (Node 7 Empty)))) `shouldBe` 5

      it "should get the length of the linkedList" $ do
        (length' $ fromList [4,2,5,7]) `shouldBe` 4

      it "should return 0 when try to get the length of an empty linkedlist" $ do
        (length' Empty) `shouldBe` 0

    describe "Linked List deletion" $ do 
      it "should remove the last element of the LinkedList" $ do
        pop (Node 4 (Node 2 (Node 5 (Node 7 Empty)))) `shouldBe` (Node 4 (Node 2 (Node 5 Empty)))

      it "should return empty when pop the only element of the LinkedList" $ do
        pop (Node 4 Empty) `shouldBe` Empty

      it "should remove the first element of the LinkedList" $ do
        unShift (Node 4 (Node 2 (Node 5 (Node 7 Empty)))) `shouldBe` (Node 2 (Node 5 (Node 7 Empty)))

      it "should return empty when remove the only element of the LinkedList" $ do
        unShift (Node 4 Empty) `shouldBe` Empty

      it "should drop elements of the Linked List" $ do
        drop' 2 (Node 40 (Node 10 (Node 7 (Node 3 (Node 5 Empty))))) `shouldBe` (Node 7 (Node 3 (Node 5 Empty)))
        drop' 0 (Node 40 (Node 10 (Node 7 (Node 3 (Node 5 Empty))))) `shouldBe` (Node 40 (Node 10 (Node 7 (Node 3 (Node 5 Empty)))))
        drop' 6 (Node 40 (Node 10 (Node 7 (Node 3 (Node 5 Empty))))) `shouldBe` Empty
        drop' 5 (Node 40 (Node 10 (Node 7 (Node 3 (Node 5 Empty))))) `shouldBe` Empty
        drop' 4 (Node 40 (Node 10 (Node 7 (Node 3 (Node 5 Empty))))) `shouldBe` (Node 5 Empty)

      it "should take elements of the Linked List" $ do
        take' 2 (Node 40 (Node 10 (Node 7 (Node 3 (Node 5 Empty))))) `shouldBe` (Node 40 (Node 10 Empty))
        take' 0 (Node 40 (Node 10 (Node 7 (Node 3 (Node 5 Empty))))) `shouldBe` Empty
        take' 6 (Node 40 (Node 10 (Node 7 (Node 3 (Node 5 Empty))))) `shouldBe` (Node 40 (Node 10 (Node 7 (Node 3 (Node 5 Empty)))))
        take' 5 (Node 40 (Node 10 (Node 7 (Node 3 (Node 5 Empty))))) `shouldBe` (Node 40 (Node 10 (Node 7 (Node 3 (Node 5 Empty)))))

      it "should remove an element by index of the Linked List" $ do
        removeByIndex 2 (Node 40 (Node 10 (Node 7 (Node 3 (Node 5 Empty))))) `shouldBe` (Node 40 (Node 10 (Node 3 (Node 5 Empty))))
        removeByIndex 0 (Node 40 (Node 10 (Node 7 (Node 3 (Node 5 Empty))))) `shouldBe` (Node 10 (Node 7 (Node 3 (Node 5 Empty))))
        removeByIndex 4 (Node 40 (Node 10 (Node 7 (Node 3 (Node 5 Empty))))) `shouldBe` (Node 40 (Node 10 (Node 7 (Node 3 Empty))))
        removeByIndex 12 (Node 40 (Node 10 (Node 7 (Node 3 (Node 5 Empty))))) `shouldBe` (Node 40 (Node 10 (Node 7 (Node 3 (Node 5 Empty)))))
        fmap (+2) (Node 40 (Node 10 (Node 7 (Node 3 (Node 5 Empty))))) `shouldBe` (Node 42 (Node 12 (Node 9 (Node 5 (Node 7 Empty)))))

    describe "Linked List insertion" $ do
      it "should set an element in a specified index of the Linked List" $ do
        setByIndex 2 99 (Node 40 (Node 10 (Node 7 (Node 3 (Node 5 Empty))))) `shouldBe` (Node 40 (Node 10 (Node 99 (Node 7 (Node 3 (Node 5 Empty))))))
        setByIndex 0 99 (Node 40 (Node 10 (Node 7 (Node 3 (Node 5 Empty))))) `shouldBe` (Node 99 (Node 40 (Node 10 (Node 7 (Node 3 (Node 5 Empty))))))
        setByIndex 5 99 (Node 40 (Node 10 (Node 7 (Node 3 (Node 5 Empty))))) `shouldBe` (Node 40 (Node 10 (Node 7 (Node 3 (Node 5 (Node 99 Empty))))))
        setByIndex 4 99 (Node 40 (Node 10 (Node 7 (Node 3 (Node 5 Empty))))) `shouldBe` (Node 40 (Node 10 (Node 7 (Node 3 (Node 99 (Node 5 Empty))))))
        setByIndex 20 99 (Node 40 (Node 10 (Node 7 (Node 3 (Node 5 Empty))))) `shouldBe` (Node 40 (Node 10 (Node 7 (Node 3 (Node 5 (Node 99 Empty))))))

      it "should insert a value into a LinkedList" $ do
        (8 ->> 5 ->> Empty) `shouldBe` Node 8 (Node 5 Empty)

      it "should push a value into a LinkedList" $ do
        push 5 Empty `shouldBe` Node 5 Empty

      it "should push a value into a LinkedList" $ do
        (push 4 $ push 5 Empty) `shouldBe` Node 5 (Node 4 Empty)

      it "should insert a element in front of a existing list using the infix version of insert" $ do
        66 ->> fromList [4,2,5,7] `shouldBe` Node 66 (Node 4 (Node 2 (Node 5 (Node 7 Empty))))

      it "should insert a element in front of a existing list using the insert function" $ do
        insert 66 (fromList [4,2,5,7]) `shouldBe` Node 66 (Node 4 (Node 2 (Node 5 (Node 7 Empty))))

      it "should push a element at the end of a existing list" $ do
        push 66 (fromList [4,2,5,7]) `shouldBe` Node 4 (Node 2 (Node 5 (Node 7 (Node 66 Empty))))

      it "should concatenate Link Lists" $ do
        (Node 4 (Node 2 (Node 5 Empty))) .++ (Node 22 (Node 38 Empty)) .++ (Node 42 Empty) `shouldBe` Node 4 (Node 2 (Node 5 (Node 22 (Node 38 (Node 42 Empty)))))
        (concat' (Node 4 (Node 2 (Node 5 Empty))) $ concat' (Node 22 (Node 38 Empty)) (Node 42 Empty)) `shouldBe` Node 4 (Node 2 (Node 5 (Node 22 (Node 38 (Node 42 Empty)))))

    describe "Linked List is an instance of Functor Eq and Show type classes" $ do
      it "Linked list is a instance of functor type class" $ do
        fmap (+5) (Node 40 (Node 10 (Node 7 (Node 3 (Node 5 Empty))))) `shouldBe` (Node 45 (Node 15 (Node 12 (Node 8 (Node 10 Empty)))))
        fmap (^2) (Node 40 (Node 10 (Node 7 (Node 3 (Node 5 Empty))))) `shouldBe` (Node 1600 (Node 100 (Node 49 (Node 9 (Node 25 Empty)))))

      it "Linked list is a instance of Eq type class" $ do
        ((Node 40 (Node 10 (Node 7 (Node 3 (Node 5 Empty))))) == (Node 40 (Node 10 (Node 7 (Node 3 (Node 5 Empty)))))) `shouldBe` True
        ((Node 40 (Node 10 (Node 7 (Node 3 (Node 5 Empty))))) /= (Node 40 (Node 10 (Node 7 (Node 3 (Node 5 Empty)))))) `shouldBe` False
        ((Node 40 (Node 10 (Node 7 (Node 3 (Node 5 Empty))))) == (Node 42 (Node 10 (Node 7 (Node 3 (Node 5 Empty)))))) `shouldBe` False
        ((Node 40 (Node 10 (Node 7 (Node 3 (Node 5 Empty))))) /= (Node 42 (Node 10 (Node 7 (Node 3 (Node 5 Empty)))))) `shouldBe` True

      it "Linked list is a instance of Show type class" $ do
        show (Node 40 (Node 10 (Node 7 (Node 3 (Node 5 Empty))))) `shouldBe` "Node 40 (Node 10 (Node 7 (Node 3 (Node 5 Empty))))"
