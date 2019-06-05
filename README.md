# Visualizer
ACPS Spring, 2019 - Final Project

Sort Visualizer

By Aryan Sharma and David Xiedeng

Hello! Welcome to our Sort Visualizer.

A visualizer of the sorts we have done in class.
Random numbers in an array will be represented as white bars along the horizontal axis. The larger the number, the taller the bar. Currently selected values (bars) will be marked in red. Swaps will be marked with a green bar, though this may be in only some sorts.
Every time there is a swap in the sort function, the corresponding bars will be swapped and this will continue until the sort is finished and the bars are arranged from shortest to tallest.
We have also implemented negative numbers which will extend under the horizontal axis so the bars will be arranged from negative to positive.


Directions

Run the program.
The available sorts will be highlighted in green, select the one you would like to see visualized.
Click the circle to start the visualization, the square to restart the visualization with a new set of random numbers and the three bars to go back to the main menu to select a different sort.

Descriptions of currently available Sorts:

Bubble Sort: Bubble sort repeatedly steps through the list, compares adjacent pairs and swaps them if they are in the wrong order.

Insertion Sort: Our Insertion Sort creates a sorted array on the left side of the screen, taking the next value and sliding it down to the right place.

Selection Sort: Selection Sort searches for the smallest value and swaps it with the current value. It repeats this for every single index.

Quick Sort: Quick Sort utilizes a divide-and-conquer strategy to quickly sort data items by dividing a large array into two smaller arrays. It takes a pivot and reorders the values so that all the values greater than the pivot are on the right and all the values less than the pivot are on the left. It continues to do this with the two subarrays created and so on until the entire array is sorted.


Development Log:

May 20

David - wrote base of visualizer code and base draw functions

Aryan - random bars being placed, decided to include negative values, under the x axis

May 21

David - created formal bubble sort class and renamed and worked on draw commands

Aryan - finished writing bubble sort, visualizes, messed with frames and swapping bars to determine when to end swapping

May 22

David - took code from working bubble sort and implemented it in the formal bubble sort class by adding swap method,
        compartmentalized methods

Aryan - worked on display methods to change color when reaches end, took most of period fixing an error in the display

May 23

Both - worked together to finalize class structure and how to implement each of the sorts with the visualizer, now have working bubble sort visualizer that uses visual class

May 24

David - Merged Bubble to Main; made mySort in Sorts; renamed bubbleSort() to overwrite mySort()

Aryan - Started selection sort;

May 28

David - Working on Insertion Sort

Aryan - Working on Selection Sort

May 29

David - finished Insertion sort; changed how bars are displayed at the end; started quicksort

Aryan - was sick on this day

May 30

David - continued working on quickSort; stuck on implementation

Aryan - Working on selectionSort;

May 31

Aryan - finished selectionSort, fixed visualization of bubbleSort colors

Jun 2

David - working on quickSort and partition;

June 3

Aryan - worked on the user interface

David - Finished quickSort; worked on user interface

June 4

Both - worked on user interface

Aryan - fixed visualization error in bubblesort, added instructions and description

David - added restart button
