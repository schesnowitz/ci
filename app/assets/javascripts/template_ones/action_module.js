$(document).ready(function() {
  document.addEventListener("turbolinks:load", function() {
  $('#template_one_action_text_1').keyup(function() {
    $('#action_text_1_show').html($(this).val());
  });

    $('#template_one_action_text_2').keyup(function() {
    $('#action_text_2_show').html($(this).val());
  });

    $('#template_one_action_text_3').keyup(function() {
    $('#action_text_3_show').html($(this).val());
  });

    $('#template_one_action_text_4').keyup(function() {
    $('#action_text_4_show').html($(this).val());
  });

    $('#template_one_action_text_5').keyup(function() {
    $('#action_text_5_show').html($(this).val());
  });

    $('#template_one_action_text_6').keyup(function() {
    $('#action_text_6_show').html($(this).val());
  });
  
    $('#template_one_action_text_7').keyup(function() {
    $('#action_text_7_show').html($(this).val());
  });

    $('#template_one_action_button_text').keyup(function() {
    $('#action_button_text_show').html($(this).val()); 
  });
 });
});
