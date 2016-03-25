 // JavaScript Olympics

// I paired with Ena on this challenge.

// This challenge took me [2] hours.


// Warm Up




// Bulk Up
var winners = [{
  name: "Elan",
  eventWon: "Skiing Competition",
},
{
  name: "Ena",
  eventWon: "Womens Coding Dojo",
},
{
  name: "Alex",
  eventWon: "Basel World 2016",
},
{
  name: "Erica",
  eventWon: "Pharmaceuticals Convention Games",
},
{
  name: "Vlad",
  eventWon: "Tough Mudder",
}];

// We created two functions for practice. One that just logs a string and one that creates a new win property:

// First function creates a new property:

function winProperty(winners) {
  for ( var idx = 0; idx < winners.length; idx++ ) {
    winners[idx].win = winners[idx].name + " won the " + winners[idx].eventWon;
  };
  console.log(winners);
};

winProperty(winners);


// Second function logs a string:

function athletes(winners) {
  winners.forEach(function(athlete) {
    console.log( athlete.name + " won the " + athlete.eventWon + "!");
  });
};

athletes(winners);

// Jumble your words


function reverseString(word) {
  var result = "";
  for ( var idx = word.length - 1; idx > -1; idx-- ) {
    result += word[idx];
  }
  console.log(result);
}

reverseString("Jumble Your Words!");



// 2,4,6,8

function even(number) {
  return number % 2 === 0
};

var numbers = [2, 4, 6, 8, 1, 4, 9, 3, 3, 7, 5];
console.log(numbers.filter(even));

// Or you can do the following:

function evenManual(numbers) {
  var result = [];

  numbers.forEach(function(number) {
    if ( number % 2 === 0 ) {
      result.push(number);
    };
  });
  console.log(result);
};

evenManual(numbers);

// Or for fun we did this too:

function forEven(numbers) {
  var result = []
  for ( var idx = 0; idx < numbers.length; idx++ ) {
    if ( numbers[ idx ] % 2 === 0 ) {
      result.push(numbers[ idx ]);
    };
  };
  console.log(result);
};

forEven(numbers);

// "We built this city"

function Athlete(name, age, sport, quote){
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
};


// Driver Test Code:

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

// Reflection

// What JavaScript knowledge did you solidify in this challenge?

  // I definitely solidified my understanding of looping through objects and arrays

// What are constructor functions?

  // Constructor functions are similar to what a class is in Ruby. Essentially, you can create an object using literal notation but using constructor functions allows you the freedom to create multiple similar objects and just pass in different properties to it. This is very useful.

// How are constructors different from Ruby classes (in your research)?

  // I'm not quite sure. My understanding of this is very limited as of now but I would assume that a Ruby class is different in the sense that there are many methods you could call as opposed to in JavaScript, properties act more like a hash. In my opinion, if I'm correct, Ruby classes are much more flexible.