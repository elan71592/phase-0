// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Ena.

// Pseudocode

// Step 1: Declaring function with one parameter
// Step 2: Set new variable to hold paramater set to string, split, and reversed
// Step 3: Set loop to iterate through new array of numbers, index starting at 3, insert comma
// Step 4: Set new result variable to hold looped array, reverse it, join
// Step 5: Return result



// Initial Solution
// function numCommas(number) {
//   var result = ''
//   var numArray = number.toString().split("");
//   numArray = numArray.reverse();
//   for ( var idx = 3; idx < numArray.length; idx += 4 ) {
//     numArray.splice( idx, 0, "," );
//   }
//   result = numArray.reverse().join("");
//   return result;
// };
// numCommas(123445324);



// Refactored Solution
function numCommas(number) {
  var numArray = number.toString().split("").reverse();
  for ( var idx = 3; idx < numArray.length; idx += 4 ) {
    numArray.splice( idx, 0, "," );
  }
  var result = numArray.reverse().join("");
  return result;
};



// Your Own Tests (OPTIONAL)
function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (numCommas(1234) === '1,234' ),
  "The output should be 1,234",
  "1. "
)

assert(
  (numCommas(6746583) === '6,746,583'),
  "The output should be 6,746,583",
  "2. "
)

assert(
  (numCommas(123) === '123'),
  "The output should be 123",
  "3. "
)

assert(
  (numCommas(561909347855) === '561,909,347,855'),
  "The output should be 561,909,347,855",
  "4. "
)



// Reflection

// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?

  // Oh my. Using JavaScript was immensely painful compared to Ruby. The thing is, Ruby makes everything easier due to negative indexes and the insert method. So approaching the problem in a similar manner was a little challenging. After a couple of hours of bashing our heads against a wall, we figured it out. Similar approach, except in order to count from the back, we needed to reverse the number and split it into an array. After that, the splice method handled the rest.

// What did you learn about iterating over arrays in JavaScript?

  // I learned that every language basically has the same concepts. The do, while, for, forEach, and so on are all ways to iterate in JavaScript but are not so different from how you would iterate in Ruby. Realistically, they are all similar, just syntactically, different.

// What was different about solving this problem in JavaScript?

  // The difference was that in order to iterate from the back, we needed to reverse it as oppose to using negative indexes. Another issue is that the splice method which gets this working easily, only works on arrays and the built in reverse() method only works on arrays as well so we needed to convert the number passed in, to a string and then split it into an array, reverse it, and splice it to insert the commas where necessary.

// What built-in methods did you find to incorporate in your refactored solution?

  // Our refactored solution kept the same methods we originally found which were basically, toString(), split(), reverse(), splice(), join().