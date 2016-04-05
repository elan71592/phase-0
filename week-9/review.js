//Grocery List Items Challenge

//Pseudocode:
//Create groceryList object
//Add items with quantity to list
//Remove items from list
//Update item quantity
//Print list by looping through it


//Initial Solution:

var groceryList = {};

groceryList.salmon = 1;
groceryList.asparagus = 1;
groceryList.lemons = 3;
groceryList.cake = 1;
groceryList.cookies = 5;
groceryList.capers = 1;

delete groceryList.cake;
delete groceryList.cookies;

groceryList.salmon = 3;
groceryList.asparagus = 4;

console.log("Grocery List");
console.log("-------------");

for (var key in groceryList) {
  console.log(key + ": "+ groceryList[key]);
  console.log("-------------");
}

//Refactored:


var list = {}

var groceries = ["salmon", "asparagus", "lemons", "cake", "cookies", "capers"]
var numOfEach = [1, 1, 3, 1, 5, 1]

groceries.forEach(function(name, idx) {
  list[name] = numOfEach[ idx ]
});

delete list.cake;
delete list.cookies;

list.salmon = 3;
list.asparagus = 4;

console.log("Grocery List");
console.log("-------------");

for ( var item in list ) {
  console.log(item + ": "+ list[item]);
  console.log("-------------");
}


/*Reflection:
What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)

  - Adding, removing, and updating properties in objects. I also feel much more comfortable looping through
objects now.

What was the most difficult part of this challenge?

  - I didn't find anything difficult in this challenge.

Did an array or object make more sense to use and why?

  - An object made sense because we are working with key, value pairs and objects make it easy to
add, remove, and update information.
*/


// Bingo Challenge From Ruby Done In JavaScript As Well

var board = [];
var randomNum = Math.floor(Math.random() * 100);
var letters = ["B", "I", "N", "G", "O"];
var randomChar = Math.floor(Math.random() * letters.length);

function shuffle(arr, groups) {
  var arrGroup = [];

  for ( var idx = 0; idx < groups; idx++ ) {
    var number = Math.floor(Math.random() * arr.length);
    arrGroup.push( arr[ number ] );
    arr.splice(number, 1);
  }
  return arrGroup;
}

function createBoard() {
  var tempBoard = [];
  var start = 1;
  var finish = 15;

  for ( var idx = 0; idx < 5; idx++ ) {
    tempBoard.push(new Array());
  }

  tempBoard.forEach(function(row) {
    while ( start <= finish ) {
      row.push(start);
      start++;
    }
    finish += 15;
    board.push(shuffle(row, 5));
  });
};

function check(board) {
  board.forEach(function(row) {
    if ( row[ randomChar ] === randomNum ) {
      row[randomChar] = "X";
    };
  });
}

function print(board) {
  console.log("WELCOME TO BINGO");
  console.log("================");

  board.forEach(function(row) {
    console.log.apply( console, row );
  });
};

createBoard();
check(board);
print(board);