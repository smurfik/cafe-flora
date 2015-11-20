// Here is the jQ for a click event on just a section-name element
// $(".section-name").click(function() {
//   console.log(this);
//   return false;
// });
//
// This toggles display of whole item-container section on and off on click of first section name
// $(".section-name.section-28").click(function () {
//  $(".item-container").toggle();
//  return false;
// });
//
//
// This toggles just the section with same number (typed in directly - not yet passed in)
// $(".section-name.section-28").click(function () {
//  $(".item-details.section-28").toggle();
//  return false;
// });
//
//
// This toggles away everything that's NOT related to the target section - still need to 1) hide everything on load, and 2) interpolate in id#s instead of hard-coding in
// $(".section-name.section-28").click(function () {
//  $(".item-details").hide();
//  $(".item-details.section-28").toggle();
//  return false;
// });
//
//
// This does everything except interpolate in id #
// $(".item-details").hide();
// $(".section-name.section-28").click(function () {
//  $(".item-details.section-28").toggle();
//  return false;
// });

$(document).ready(function() {

  // set up the view on load
  $(".item-details").hide();
  var top_sec = $(".section-name").first();
  var top_sec_id = top_sec.attr("class").split(' ')[1];
  $(".item-details"+"."+ top_sec_id).show();
  top_sec.css('background-color', 'rgba(0, 0, 0, 0.10)');

  $(".section-name").hover(function () {
    $(".section-name").css('background-color', 'white');
    $(this).css('background-color', 'rgba(0, 0, 0, 0.10)')
    $(".item-details").hide();
    var sec = ($(this).attr("class").split(' ')[1]);
    $(".item-details"+"."+ sec).toggle();
  });

  // working code in case new stuff doesn't work out!
  // $(".item-details").hide();
  // var top_sec = $(".section-name").first().attr("class").split(' ')[1];
  // $(".item-details"+"."+ top_sec).show();
  //
  // $(".section-name").click(function () {
  //   $(".item-details").hide();
  //   var sec = ($(this).attr("class").split(' ')[1]);
  //   $(".item-details"+"."+ sec).toggle();
  //   return false;
  // });

});

// this gets the section number of the target object, where var s = $(".section-id.section-28")
// var sec = s.attr("class").split(' ')[1];

// this gets all the section numbers into an array!
// var list = $(".section-name").map(function(){return $(this).attr("class").split(' ')[1];}).get();

// when clicking a section name, this grabs the section id from attrs and returns
// $(".section-name").click(function () {
// console.log($(this).attr("class").split(' ')[1]);
// return false;
// });

// And this assigns the section id to 'sec', which now needs to be passed in as a variable...
// $(".section-name").click(function () {
// var sec = ($(this).attr("class").split(' ')[1]);
// console.log(sec);
// return false;
// });
//
// Attempting to toggle display on and off instead...
// $(".section-name").click(function () {
// var sec = ($(this).attr("class").split(' ')[1]);
// $(".item-details."+sec).toggle();
// return false;
// });

// After reformatting the line with 'toggle', this seems to work!
// $(".section-name").click(function () {
// var sec = ($(this).attr("class").split(' ')[1]);
// $(".item-details"+"."+ sec).toggle();
// return false;
// });
