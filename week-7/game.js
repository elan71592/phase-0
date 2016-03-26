 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission:
  // Create a tic tac toe game that plays itself and prints out the board with who the winner is when done.
// Goals:
  // Get 3 X's or O's in a pattern
// Characters:
  // X and O
// Objects:
  // None that I can think of for this challenge as of yet.
// Functions:
  // Play function, Print function

// Pseudocode
// Step 1: Create a function to play the game
// Step 2: The play function should be on until it is set to off
// Step 3: The play function should decide whether it is X or O's turn
// Step 4: The play function should find an available place to mark X or O
// Step 5: The play function should loop through the board and mark an X or O where there is an available space
// Step 6: The play function should call the print function to display the board when game is over


// Initial Code


// var board = [
//   ['.', '.', '.'],
//   ['.', '.', '.'],
//   ['.', '.', '.'],
// ];


// var possibleWins = [
//   [['X', 'X', 'X'],
//   ['.', '.', '.'],
//   ['.', '.', '.']],

//   [['X', '.', '.'],
//   ['X', '.', '.'],
//   ['X', '.', '.']],

//   [['X', '.', '.'],
//   ['.', 'X', '.'],
//   ['.', '.', 'X']],

//   [['.', 'X', '.'],
//   ['.', 'X', '.'],
//   ['.', 'X', '.']],

//   [['.', '.', '.'],
//   ['X', 'X', 'X'],
//   ['.', '.', '.']],

//   [['.', '.', '.'],
//   ['.', '.', '.'],
//   ['X', 'X', 'X']],

//   [['.', '.', 'X'],
//   ['.', '.', 'X'],
//   ['.', '.', 'X']],

//   [['.', '.', 'X'],
//   ['.', 'X', '.'],
//   ['X', '.', '.']],
// ];

// var turn = 0


// function get_available_cell( board ) {
//   var availabile_cells = [];

//   board.forEach(function(row, row_index){
//     row.forEach(function(cell, column_index){
//       if ( cell == '.' ) {
//         availabile_cells.push({
//           x: row_index,
//           y: column_index
//         });
//       }
//     });
//   });

//   var random_cell_idx = Math.floor(Math.random() * availabile_cells.length);
//   return availabile_cells[ random_cell_idx ];
// }


// function play( turn, board ) {
//   var game_on = true;
//   while ( game_on ) {
//     if ( turn % 2 === 0 ) {
//       var char = "X"
//     } else {
//       var char = "O"
//     }

//     turn++

//     var availabile_cell = get_available_cell( board );
//     if ( typeof availabile_cell === 'undefined' ) {
//       console.log( 'Game over' );
//       break;
//     }

//     board[ availabile_cell.x ][ availabile_cell.y ] = char;
//     print_board( board );
//     console.log( '\n' );

//     if ( board_has_winner( board ) ) {
//       console.log( char + ' is winner' );
//       break;
//     }
//   }
// }


// function board_has_winner( board ) {
//   var flag = false;
//   possibleWins.forEach( function(win) {
//     var matches = 0;
//     var last_char = null;
//     win.forEach(function(row, row_index) {
//       row.forEach(function(column, column_index) {
//         if ( column !== '.' && board[ row_index ][ column_index ] !== '.' ) {
//           if ( last_char !== null && last_char !== board[ row_index ][ column_index ] ) {
//             matches = 0;
//             last_char = null;
//           }
//           last_char = board[ row_index ][ column_index ];
//           matches++;

//           if ( matches == 3 ) {
//             flag = true;
//             return;
//           }
//         }
//       });
//     });
//   });

//   return flag;
// }


// function print_board( board ) {
//   board.forEach( function( row ) {
//     console.log( row );
//   });
// }

// play( turn, board );




// Refactored Code


var board = [
  ['.', '.', '.'],
  ['.', '.', '.'],
  ['.', '.', '.'],
];


var possibleWins = [
  [['X', 'X', 'X'],
  ['.', '.', '.'],
  ['.', '.', '.']],

  [['X', '.', '.'],
  ['X', '.', '.'],
  ['X', '.', '.']],

  [['X', '.', '.'],
  ['.', 'X', '.'],
  ['.', '.', 'X']],

  [['.', 'X', '.'],
  ['.', 'X', '.'],
  ['.', 'X', '.']],

  [['.', '.', '.'],
  ['X', 'X', 'X'],
  ['.', '.', '.']],

  [['.', '.', '.'],
  ['.', '.', '.'],
  ['X', 'X', 'X']],

  [['.', '.', 'X'],
  ['.', '.', 'X'],
  ['.', '.', 'X']],

  [['.', '.', 'X'],
  ['.', 'X', '.'],
  ['X', '.', '.']],
];

var turn = 0


function get_available_cell( board ) {
  var availabile_cells = [];

  board.forEach(function(row, row_index){
    row.forEach(function(cell, column_index){
      if ( cell == '.' ) {
        availabile_cells.push({
          x: row_index,
          y: column_index
        });
      }
    });
  });

  var random_cell_idx = Math.floor(Math.random() * availabile_cells.length);
  return availabile_cells[ random_cell_idx ];
}


function play( turn, board ) {
  var game_on = true;
  while ( game_on ) {
    var char = turn % 2 == 0 ? 'X' : 'O';
    turn++

    var availabile_cell = get_available_cell( board );
    if ( typeof availabile_cell === 'undefined' ) {
      console.log( 'Game over' );
      break;
    }

    board[ availabile_cell.x ][ availabile_cell.y ] = char;
    print_board( board );
    console.log( '\n' );

    if ( board_has_winner( board ) ) {
      console.log( char + ' is winner' );
      break;
    }
  }
}


function board_has_winner( board ) {
  var flag = false;
  possibleWins.forEach( function(win) {
    var matches = 0;
    var last_char = null;
    win.forEach(function(row, row_index) {
      row.forEach(function(column, column_index) {
        if ( column !== '.' && board[ row_index ][ column_index ] !== '.' ) {
          if ( last_char !== null && last_char !== board[ row_index ][ column_index ] ) {
            matches = 0;
            last_char = null;
          }
          last_char = board[ row_index ][ column_index ];
          matches++;

          if ( matches == 3 ) {
            flag = true;
            return;
          }
        }
      });
    });
  });

  return flag;
}


function print_board( board ) {
  board.forEach( function( row ) {
    console.log( row );
  });
}

play( turn, board );



// Reflection

/*
What was the most difficult part of this challenge?

  - THE LOOPING!!!! Looping through the board and trying to figure out each step of what I have to check was torturous!

What did you learn about creating objects and functions that interact with one another?

  - Creating separate functions for a specific task is so much cleaner and more efficient than writing one function to carry out everything. Also it's more organized and much more readable.

Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?

  - I honestly spent about 6 hours on this challenge and when it came time to refactor, my mind was just not there. I'll never forget this challenge that had me up until 6am haha. The only thing I did in terms of refactoring was one if statement, I shortened it. Aside from that, nothing at all and it looked great to me.

How can you access and manipulate properties of objects?

  - You can use dot notation to set an objects property to a new value, or loop through the object using many different looping methods such as forEach. My obsession with the forEach loop stems from my love for the each method in Ruby so bare with me while I forEach everything haha.
*/