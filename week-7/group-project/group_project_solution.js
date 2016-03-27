/*
User Stories
-- Sum

  As a user, I want to have a sum function.
  I want the sum function to sum all of the elements in the list
    regardless if the list has an even or odd number of elements

-- Mean

  As a user, I want to have a mean function.
  I want the mean function to sum all of the elements in the list using the sum function
  I want the mean function to take the sum and divide by 2

-- Median

  As a user, I want to have a median function.
  I want the median function to find the median in both,
  a list with an even amount of numbers and odd.

*/

/*
Pseudocode:

Step 1: Create sum function with one argument (the list of numbers)
Step 2: Create variable for sum
Step 3: Loop through numbers and increase the sum by every number
Step 4: Return the sum
Step 5: Create mean function with one argument (the list of numbers)
Step 6: Create variable for mean
Step 7: Set mean variable to the sum of the numbers using the sum function divided by the overall amount of numbers
Step 8: Return the mean
Step 9: Create median function with one argument (the list of numbers)
Step 10: Create variable and set equal to the same list of numbers just sorted in order
Step 11: Creae variable for median
Step 12: Check if there is an even amount of numbers in the list or odd
Step 13: If even then create two more variables, each to hold the two middle numbers in the list
Step 14: Set the median variable equal to the sum of the two variables from Step 13, divided by 2
Step 15: If odd, Set the median variable equal to the the middle number in the list
Step 16: Return the median

*/

/*
Pseudocode to Code

function sum(arr) {
  var sum = 0;
    arr.forEach(function(num) {
      sum += num;
    });
  return sum;
};

function mean(arr) {
  var sumNums = sum(arr)
  var mean = sumNums / arr.length
  return mean;
};

function median(arr) {
  var sorted = arr.sort();
  var median = 0

  if ( sorted.length % 2 === 0 ) {
    var middleNumberOne = (sorted[Math.floor(sorted.length/2) - 1])
    var middleNumberTwo = (sorted[Math.floor(sorted.length/2)])
    median = (middleNumberOne + middleNumberTwo) / 2;
  } else {
    median = sorted[ Math.floor(sorted.length / 2) ];
  }
  return median;
}

*/


// Final Code

function sum(arr) {
  var sum = 0;
    arr.forEach(function(num) {
      sum += num;
    });
  return sum;
};

function mean(arr) {
  var mean = sum(arr) / arr.length;
  return mean;
};

function median(arr) {
  arr.sort();
  var median = 0

  if ( arr.length % 2 === 0 ) {
    var middleNumberOne = (arr[Math.floor(arr.length/2) - 1])
    var middleNumberTwo = (arr[Math.floor(arr.length/2)])
    median = (middleNumberOne + middleNumberTwo) / 2;
  } else {
    median = arr[ Math.floor(arr.length / 2) ];
  }
  return median;
}