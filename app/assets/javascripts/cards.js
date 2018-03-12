// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).on('ready', function() {

  $('#card_name').focus();

  $('.actions').click(function() {
    $('.modal-body form').submit();
  });
});
