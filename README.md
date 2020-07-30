
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

Let's implement the sorting algorithms that are shown here:
[https://www.toptal.com/developers/sorting-algorithms](https://www.toptal.com/developers/sorting-algorithms)

[Visual execution of some sorting algorithms](https://visualgo.net/en/sorting)

### Bubble Sort Summary

Bubble Sort is the simplest sorting algorithm that works by repeatedly swapping the adjacent elements if they are in wrong order.

#### Big-O Complexity

|                 | Time Complexity |                 |  Space Complexity  |
| :-------------: | :-------------: | :-------------: | :----------------: |
|       Best      |     average     |       Worst     |        Worst       |
|       O(n)      |     O(n^2)      |       O(n^2)    |        O(1)        |


[Read more about the bubble algorithm here](https://www.geeksforgeeks.org/bubble-sort/)

### Insertion Sort Summary

Insertion sort is a simple sorting algorithm that works similar to the way you sort playing cards in your hands. The array is virtually split into a sorted and an unsorted part. Values from the unsorted part are picked and placed at the correct position in the sorted part.

#### Big-O Complexity

|                 | Time Complexity |                 |  Space Complexity  |
| :-------------: | :-------------: | :-------------: | :----------------: |
|       Best      |     average     |       Worst     |        Worst       |
|       O(n)      |     O(n^2)      |       O(n^2)    |        O(1)        |


[Read more about the insertion algorithm here](https://www.geeksforgeeks.org/insertion-sort/)

### Selection Sort Summary

The selection sort algorithm sorts an array by repeatedly finding the minimum element (considering ascending order) from unsorted part and putting it at the beginning. The algorithm maintains two subarrays in a given array.

1) The subarray which is already sorted.
2) Remaining subarray which is unsorted.

In every iteration of selection sort, the minimum element (considering ascending order) from the unsorted subarray is picked and moved to the sorted subarray.

#### Big-O Complexity

|                 | Time Complexity |                 |  Space Complexity  |
| :-------------: | :-------------: | :-------------: | :----------------: |
|       Best      |     average     |       Worst     |        Worst       |
|      O(n^2)     |     O(n^2)      |       O(n^2)    |        O(1)        |

[Read more about the selection algorithm here](https://www.geeksforgeeks.org/selection-sort/)

### Quick Sort Summary

QuickSort is a Divide and Conquer algorithm. It picks an element as pivot and partitions the given array around the picked pivot. There are many different versions of quickSort that pick pivot in different ways.

- Always pick first element as pivot. (as implemented in this project)
- Always pick last element as pivot
- Pick a random element as pivot.
- Pick median as pivot.

The key process in quickSort is partition(). Target of partitions is, given an array and an element x of array as pivot, put x at its correct position in sorted array and put all smaller elements (smaller than x) before x, and put all greater elements (greater than x) after x. All this should be done in linear time.

#### Big-O Complexity

|                 | Time Complexity |                 |  Space Complexity  |
| :-------------: | :-------------: | :-------------: | :----------------: |
|       Best      |     average     |       Worst     |        Worst       |
|    O(n log(n))  |    O(n log(n))  |       O(n^2)    |        O(log(n))        |


[Read more about the quick sort algorithm here](https://www.geeksforgeeks.org/quick-sort/)
