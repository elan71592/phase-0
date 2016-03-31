// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with Ena:
// This challenge took me [8] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode
// Set container variables to hold all canditates per voter in each category
// Loop through votes container to find all votes per voter and push to set container
// Loop through each variable and set names and their count to voteCount object
// Loop through voteCount object and find highest value per title and assign it to officers object

// __________________________________________
// Initial Solution



// var president = []
// var vicePresident = []
// var secretary = []
// var treasurer = []

// for ( var voters in votes ) {
//   president.push(votes[voters].president)
//   vicePresident.push(votes[voters].vicePresident)
//   secretary.push(votes[voters].secretary)
//   treasurer.push(votes[voters].treasurer)
// }

// for (var idx = 0; idx < president.length; idx++) {
//    voteCount.president[president[idx]] = (voteCount.president[president[idx]] || 0 ) + 1;
// }

// for (var idx = 0; idx < vicePresident.length; idx++) {
//    voteCount.vicePresident[vicePresident[idx]] = (voteCount.vicePresident[vicePresident[idx]] || 0 ) + 1;
// }

// for (var idx = 0; idx < secretary.length; idx++) {
//    voteCount.secretary[secretary[idx]] = (voteCount.secretary[secretary[idx]] || 0 ) + 1;
// }

// for (var idx = 0; idx < treasurer.length; idx++) {
//    voteCount.treasurer[treasurer[idx]] = (voteCount.treasurer[treasurer[idx]] || 0 ) + 1;
// }

// var presidentCount = [];
// var vicePresidentCount = [];
// var secretaryCount = [];
// var treasurerCount = [];

// for ( var title in voteCount ) {
//   for ( var count in voteCount[title] ) {
//     if ( title === "president" ) {
//       presidentCount.push( voteCount[title][count] );
//     } else if ( title === "vicePresident" ) {
//       vicePresidentCount.push( voteCount[title][count] );
//     } else if ( title === "secretary" ) {
//       secretaryCount.push( voteCount[title][count] );
//     } else if ( title === "treasurer" ) {
//       treasurerCount.push( voteCount[title][count] );
//     };
//   };
// };


// var officialPresident = presidentCount.sort(function(smallest, largest){return largest - smallest})[0];
// var officialVicePresident = vicePresidentCount.sort(function(smallest, largest){return largest - smallest})[0];
// var officialSecretary = secretaryCount.sort(function(smallest, largest){return largest - smallest})[0];
// var officialTreasurer = treasurerCount.sort(function(smallest, largest){return largest - smallest})[0];

// for ( var title in voteCount ) {
//   for ( var count in voteCount[title] ) {
//     if ( title === "president" ) {
//       if ( voteCount["president"][count] === officialPresident ) {
//         officers[title] = count
//       }
//     };
//     if ( title === "vicePresident" ) {
//       if ( voteCount["vicePresident"][count] === officialVicePresident ) {
//         officers[title] = count
//       }
//     };
//     if ( title === "secretary" ) {
//       if ( voteCount["secretary"][count] === officialSecretary ) {
//         officers[title] = count
//       }
//     };
//     if ( title === "treasurer" ) {
//       if ( voteCount["treasurer"][count] === officialTreasurer ) {
//         officers[title] = count
//       };
//     };
//   };
// };


// __________________________________________
// Refactored Solution

for (var person in votes) {
  for (var title in votes[person]) {
    var personName = votes[person][title]

    if (voteCount[title][personName]) {
      voteCount[title][personName] += 1
    } else {
      voteCount[title][personName] = 1
    }
  }
}

function getWinner(voteCounts) {
  var max = 0
  var winner = ""

  for ( var name in voteCounts ) {
    if ( voteCounts[name] > max ) {
      max = voteCounts[name];
      winner = name;
    }
  }
  return winner
}

for ( var title in officers ) {
  officers[title] = getWinner(voteCount[title]);
}




// __________________________________________
// Reflection


// What did you learn about iterating over nested objects in JavaScript?

  // This challenge was hell to iterate over. It took us FOREVER. I definitely learned a lot though with figuring out what each iteration points to and what the value of each variable in the for..in loops are.

// Were you able to find useful methods to help you with this?

  // There were no useful methods I found rather just the looping was the only thing necessary here.

// What concepts were solidified in the process of working through this challenge?

  // Definitely iterating over the objects and setting new values as I iterate.

// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)