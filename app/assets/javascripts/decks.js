// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.



$(document).on('ready', function(){
  $('#deck_name').focus();

  $('.modal-footer .btn-primary').click(function(){
    $('.modal-content form').submit();
  });

  $('.actions').click(function(){
    $('.modal-content form').submit();
  })
});
