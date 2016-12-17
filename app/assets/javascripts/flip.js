$(document).ready(function() {
  $(function () {
    $('#datetimepicker1').datetimepicker({
      format: 'DD/MM/YYYY'
    });
  });

});



$(document).on("click","#swap-btn",function(e){
  e.preventDefault()
  $('.flip-container .flipper').addClass('flip-transform')
  $('#confirmation-tick').removeClass('swap-display-hidden')
});

