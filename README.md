
# Algorithms & Data Structure in Haskell

Implementing Algorithms and Data structures in Haskell

## Project setup instructions:

### Install packages

```
stack install
```

### run tests
```
stack test
```

### Run tests in watch mode

```
stack test --file-watch
```

### Run tests in watch mode and coverage

```
stack test --file-watch --coverage
```

## Sort

Let's implement the sorting algorithms that are shown here: [https://www.toptal.com/developers/sorting-algorithms](https://www.toptal.com/developers/sorting-algorithms)

### Insertion Sort Summary

Insertion sort is a simple sorting algorithm that works similar to the way you sort playing cards in your hands. The array is virtually split into a sorted and an unsorted part. Values from the unsorted part are picked and placed at the correct position in the sorted part.

#### Big-O Complexity

|                 | Time Complexity |                 |  Space Complexity  |
| :-------------: | :-------------: | :-------------: | :----------------: |
|       Best      |     average     |       Worst     |        Worst       |
|       O(n)      |     O(n^2)      |       O(n^2)    |        O(1)        |


[Read more about the insertion algorithm here](https://www.geeksforgeeks.org/insertion-sort/)
