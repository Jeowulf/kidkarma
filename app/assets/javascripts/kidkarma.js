
function displayColor() {
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
function colorVoting () {
  var colors = [0,0,0,0,0];
  console.log(colors)
  $('#popSud').click(function() {
    // colors.splice(0, 1, (colors[0] + 1));
  console.log(colors)
  });
  // displayColor(colors);
}

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
