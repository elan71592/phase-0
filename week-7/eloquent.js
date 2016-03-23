// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

var names = ["Elan", "Alex", "Vlad"]

names.forEach(function(name) {
  console.log("I know " + name);
});




// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
function board(boardSize) {
  var size = boardSize
  var line1 = ""
  var line2 = ""

  for ( var pos = 0; pos < (size + 1); pos++ ) {
    if ( pos % 2 === 0 ) {
        while ( line1.length !== size ) {
            for ( var idx = 0; idx < size; idx++ ) {
                if ( idx % 2 === 0 ) {
                    line1 += " ";
                  } else {
                    line1 += "#";
                  };
              };
          };
      } else {
        while ( line2.length !== size ) {
            for ( var idx = 0; idx < size; idx++ ) {
                if ( idx % 2 === 0 ) {
                    line2 += "#";
                  } else {
                    line2 += " ";
                  };
              };
          };
      };
  };

  for ( var idx = 0; idx < size; idx++ ) {
    if ( idx % 2 === 0 ) {
        console.log(line1);
      } else {
        console.log(line2);
      };
  };
};

board(8);
board(12);
board(50);


// Small Program Asked To Be Put In The File (Asking about favorite food)

// var usrInput = prompt("What is your favorite food?").toLowerCase();
// if ( usrInput === "pizza" ) {
//    alert("Hey that's my favorite too!");
// } else {
//    alert("Oh I like " + usrInput + " too but pizza is my favorite!");
// }


// Functions

// Complete the `minimum` exercise.


function min(num1, num2) {
  console.log( Math.min(num1, num2) );
}

min(1, 2);
min(5, 2);
min(1231238, 485452875);

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
  name: "Elan",
  age: 24,
  favoriteFoods: ["pizza", "burgers", "nutella cake"],
  quirk: "LA Fanatic",
}

console.log(me.name);
console.log(me.age);
console.log(me.favoriteFoods);
console.log(me.quirk);

me.favoriteFoods.forEach(function(food) {
  console.log(me.name + " loves " + food + "!");
});