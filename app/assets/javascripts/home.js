$(document).ready(function() {

  if ($('#add').text() == "Add Menu") {
    $('#home-form').hide();
  };

  $('.page-content').click(function(){
    $('#add').show();
  });

  if ($('#error').text() == "Menu name can't be blank") {
    $('#add').last().hide();
    $('#home-form').show();
    $(".footer .form").css({padding: 0});
  };

  $('#add').last().click(function(){
    $(this).hide();
    $('#home-form').show();
  });

});
