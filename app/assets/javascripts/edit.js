$(document).ready(function() {

  $('#full').click(function(){
      var name = $(this).text();
      $(this).html('');
      $('<input></input>')
          .attr({
              'type': 'text',
              'name': 'fname',
              'id': 'txt_full',
              'size': '30',
              'value': name
          })
          .appendTo('#full');
      $('#txt_full').focus();
  });

  $(document).on('blur','#txt_full', function(){
      var name = $(this).val();
      //alert('Make an AJAX call and pass this parameter >> name=' + name);
      $('#full').text(name);
  });

});
