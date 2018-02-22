$(document).ready(function() {
  document.addEventListener("turbolinks:load", function() {
    $('#template_one_header_title').keyup(function() {
    $('#header_title_show').html($(this).val()); 
  });

  $('#template_one_header_text').keyup(function() {
    $('#header_text_show').html($(this).val()); 
  });
 });
});