// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.



$(document).on('turbolinks:load', function() {
  $('.flipButton1').bind("click", function() {
    $(this).prev().toggleClass('hover');
  })
  $('.flipButton2').bind("click", function() {
    $(this).prev().toggleClass('hover');
  })
  $('#deck_name').focus();

  $('.modal-footer .btn-primary').click(function() {
    $('.modal-body form').submit();
  }); 
});
