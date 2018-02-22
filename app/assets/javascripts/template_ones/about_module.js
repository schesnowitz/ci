$(document).ready(function() {
  document.addEventListener("turbolinks:load", function() {
  $('#template_one_about_title').keyup(function() {
    $('#about_title_show').html($(this).val());
  });

  $('#template_one_about_text').keyup(function() {
    $('#about_text_show').html($(this).val());
  });

  $('#template_one_about_text_2').keyup(function() {
    $('#about_text_2_show').html($(this).val());
  });
 });
});