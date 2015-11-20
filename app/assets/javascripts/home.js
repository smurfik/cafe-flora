$(document).ready(function() {

  if ($('#add').text() == "Add Menu") {
    $('#home-form').hide();
  };

  $('.page-content').click(function(){
    $('#add').show();
    $('#home-form').hide();
    if ($('#error').text() == "Menu name can't be blank") {
      $('#add').show();
      $('#error').hide();
      $(".footer ul").css({marginTop: 0});
    };
  });

  if ($('#error').text() == "Menu name can't be blank") {
    $('#add').last().hide();
    $('#home-form').show();
    $(".footer .form").css({padding: 0});
  };

  $('#add').last().click(function(){
    $(this).hide();
    $(".footer .form").css({padding: 20});
    $('#home-form').show();
  });

});
