$(document).ready(function() {

  $('#home-form').hide();

  $('#add').last().click(function(){
    $(this).hide();
    $('#home-form').show();
  });

});
