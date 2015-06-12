// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap
//= require_tree .
//= require_self
$(document).ready(function () {
  'use strict';

var colors = [0, 0, 0, 0, 0];

function displayColor(colors) {
    if (colors[0] >= colors[1] && colors[0] >= colors[2] && colors[0] >= colors[3]  && colors[0] >= colors[4]) {
      result = "grey";
    }
    else if (colors[1] >= colors[0] && colors[1] >= colors[2] && colors[1] >= colors[3]  && colors[1] >= colors[4]) {
      result = "green";
    }
    else if (colors[2] >= colors[1] && colors[2] >= colors[0] && colors[2] >= colors[3]  && colors[2] >= colors[4]) {
      result = "blue";
    }
    else if (colors[3] >= colors[1] && colors[3] >= colors[2] && colors[3] >= colors[0]  && colors[3] >= colors[4]) {
      result = "purple";
    }
    else if (colors[4] >= colors[1] && colors[4] >= colors[2] && colors[4] >= colors[3]  && colors[4] >= colors[0]) {
      result = "yellow";
    }
    return result;
}






// $('.green').click(function() {
//   $('.extra').toggleClass('extraTwo');
//   $(this).parents('.scoop').toggleClass('scoopGreen');
//   console.log("titties");
// });


// function colorVoting () {
//   var colors = [0,0,0,0,0];
//   console.log(colors)
//   $('#grey').click(function() {
//     colors.splice(0, 1, (colors[0] + 1));
//   console.log(colors)
//   });
//   // displayColor(colors);
// }
// colorVoting();
// $('#dogwood2').click(function() {
//  $('#dogwood1').addClass('animated rubberBand');
// });

// function fillHoldingArray(){
// $('input').each(function(){
//   holdingArray.push(this.value);
// });
// }
// function fail() {
//   if (resultSudokuyo === 'fail') {
//     $('.firstNo').toggleClass('firstNoBig');
//     $('.tryAgain').toggleClass('tryAgainBig');
//   }
// }
});
