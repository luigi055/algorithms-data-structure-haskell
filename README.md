
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

### Shell Sort Summary

ShellSort is mainly a variation of Insertion Sort. In insertion sort, we move elements only one position ahead. When an element has to be moved far ahead, many movements are involved. The idea of shellSort is to allow exchange of far items. In shellSort, we make the array h-sorted for a large value of h. We keep reducing the value of h until it becomes 1. An array is said to be h-sorted if all sublists of every h’th element is sorted.

#### Big-O Complexity

|                 | Time Complexity |                 |  Space Complexity  |
| :-------------: | :-------------: | :-------------: | :----------------: |
|       Best      |     average     |       Worst     |        Worst       |
|    O(n log(n))  |  O(n log(n))^2  |  O(n log(n))^2  |        O(1)        |

[Read more about the shell sort algorithm here](https://www.geeksforgeeks.org/shellsort/)

### Merge Sort Summary

Like QuickSort, Merge Sort is a Divide and Conquer algorithm. It divides input array in two halves, calls itself for the two halves and then merges the two sorted halves. The merge() function is used for merging two halves. The merge(arr, l, m, r) is key process that assumes that arr[l..m] and arr[m+1..r] are sorted and merges the two sorted sub-arrays into one. See following C implementation for details.

#### Big-O Complexity

|                 | Time Complexity |                 |  Space Complexity  |
| :-------------: | :-------------: | :-------------: | :----------------: |
|       Best      |     average     |       Worst     |        Worst       |
|    O(n log(n))  |    O(n log(n))  |    O(n log(n))  |        O(n)   |


[Read more about the merge sort algorithm here](https://www.geeksforgeeks.org/merge-sort/)

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

## Data Structures:

# Binary Search Trees.

BST are special case of a Binary tree which is a type of a tree.
so, they're tree that have at most two children per node, And on top of that binary search trees are sorted in a particular way they are kept in an order.

BST are used to store data that can be compared, that is sortable so often classically we're talking about numbers.

the child that is smaller than the root node is putted at the left side and the larger is placed to the right.

To recap.

A Binary Search Tree (BST) is a binary tree in which each vertex has only up to 2 children that satisfies BST property: All vertices in the left subtree of a vertex must hold a value smaller than its own and all vertices in the right subtree of a vertex must hold a value larger than its own.

- Every parent node has at most **Two** children.
- Every node to the left of a parent node is **always less** than the parent.
- Every node to the right of a parent node is **always greater** than the parent.

## AVL Tree

An Adelson-Velskii Landis (AVL) tree is a self-balancing BST that maintains it's height to be O(log N) when having N vertices in the AVL tree.

## Big O of the Binary Search Tree

Insertion - O(log n)
searching - O(log n)

**NOT guaranteed!**

### Compared with others Data Structures

| Data Structure     | Time Complexity |          |           |          |        |        |           |          | Space Complexity |
| :----------------- | :-------------: | :------: | :-------: | :------: | :----: | :----: | :-------: | :------: | :--------------: |
|                    |     average     |          |           |          | Worst  |        |           |          |      Worst       |
|                    |     Access      |  Search  | Insertion | Deletion | Access | Search | Insertion | Deletion |                  |
| Binary Search Tree |    O(Log N)     | O(Log N) | O(Log N)  | O(Log N) |  O(N)  |  O(N)  |   O(1)    |   O(1)   |       O(N)       |
| Queue              |      O(N)       |   O(N)   |   O(1)    |   O(1)   |  O(N)  |  O(N)  |   O(1)    |   O(1)   |       O(N)       |
| Stack              |      O(N)       |   O(N)   |   O(1)    |   O(1)   |  O(N)  |  O(N)  |   O(1)    |   O(1)   |       O(N)       |
| Doubly Linked List |      O(N)       |   O(N)   |   O(1)    |   O(1)   |  O(N)  |  O(N)  |   O(1)    |   O(1)   |       O(N)       |
| Singly Linked List |      O(N)       |   O(N)   |   O(1)    |   O(1)   |  O(N)  |  O(N)  |   O(1)    |   O(1)   |       O(N)       |
| Array              |      O(1)       |   O(N)   |   O(N)    |   O(N)   |  O(1)  |  O(N)  |   O(N)    |   O(N)   |       O(N)       |
