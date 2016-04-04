// U3.W9:JQuery


// I worked on this challenge with: Ena.
// This challenge took me [1] hours.

$(document).ready(function(){

//RELEASE 0:
  //link the image

//RELEASE 1:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css({'background-color': 'pink'})

//RELEASE 2:
  //Add code here to select elements of the DOM
  var intro = $('h1:first');
  var sub = $('.mascot h1');
  var background = $('body');


//RELEASE 3:
  // Add code here to modify the css and html of DOM elements
    intro.html('<h1>You\'ve been hacked by the E&E squad!</h1>');
    sub.html('<h3>Hacking education courtesy of:</h3>');
    intro.css({
    "background-color": "red",
    "border-radius": "30px",
    "border": "5px solid #000",
    "font-size": "2em",
    "font-family": "Courier New",
    "text-align": "center",
    "color": "white",
    });

    $('.mascot').css({
      "text-align": "center",
      "font-family": "Arial",
      "text-transform": "uppercase"
    })

    background.css("background-color", "white");


//RELEASE 4: Event Listener
  // Add the code for the event listener here

 $('img').on('mouseenter', function(image){
      image.preventDefault();
      $(this).attr('src', 'imgs/firey.jpg');
      $(this).css({
        'width': '200px',
      })
    })
  $('img').on('mouseleave', function(image){
    image.preventDefault();
    $(this).attr('src', 'imgs/dbc_logo.png');
    $(this).css({
      'width': 'auto',
    })
  })

//RELEASE 5: Experiment on your own
  intro.hide().slideDown("slow", function() {
  });

  $('.mascot').hide().slideDown("slow", function() {
  });
})  // end of the document.ready function: do not remove or write DOM manipulation below this.

// Reflection:

// What is jQuery?

  // jQuery is a Javascript library designed to navigate through a document, select DOM elements, create animations, and handle events.

// What does jQuery do for you?

  // jQuery animates the page, makes it more interactive for the user, and enhances the overall user experience.

// What did you learn about the DOM while working on this challenge?

  // I learned how easy it is to manipulate nodes directly on the DOM and also how useful it is when trying to enrich the user experience.