$(document).ready(function() {

  $(".item-details").hide();
  $(".item-forms").hide();
  var top_sec = $(".section-name").first();
  var top_sec_id = top_sec.attr("class").split(' ')[1];
  $(".item-details"+"."+ top_sec_id).show();
  top_sec.css('background-color', 'rgba(0, 0, 0, 0.06)');
  $(".item-forms"+"."+ top_sec_id).show();

  $(".section-name").hover(function () {
    $(".section-name").css('background-color', 'transparent');
    $(this).css('background-color', 'rgba(0, 0, 0, 0.06)');
    $(".item-forms").hide();
    $(".item-details").hide();
    var sec_id = ($(this).attr("class").split(' ')[1]);
    $(".item-details"+"."+ sec_id).toggle();
    $(".item-forms"+"."+ sec_id).toggle();
  });

});
