$(document).ready(function() {
  document.addEventListener("turbolinks:load", function() {
    $('#template_one_contact_title').keyup(function() {
    $('#contact_title_show').html($(this).val());
    });

    $('#template_one_contact_text').keyup(function() {
    $('#contact_text_show').html($(this).val());
    });

    $('#template_one_contact_sender_hide_name').click(function() {
    if ($(this).is(':checked')) {
      $("#hideName").fadeOut();
    } else {
      $("#hideName").fadeIn();
    }
    });

    $('#template_one_contact_sender_hide_phone').click(function() {
    if ($(this).is(':checked')) {
      $("#hidePhone").fadeOut();
    } else {
      $("#hidePhone").fadeIn();
    }
    });

    $('#template_one_contact_sender_hide_message').click(function() {
    if ($(this).is(':checked')) {
      $("#hideMessage").fadeOut();
    } else {
      $("#hideMessage").fadeIn();
    }
  }); 
 });
});