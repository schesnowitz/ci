$(document).ready(function() { 
  document.addEventListener("turbolinks:load", function() {
   $('#template_one_service_icon_1').change(function(e) {
    $('#service_icon_1_input').removeClass().addClass('fa fa-' + this.value + ' fa-2x');
   });

   $('#template_one_service_icon_2').change(function(e) {
    $('#service_icon_2_input').removeClass().addClass('fa fa-' + this.value + ' fa-2x');
   });

   $('#template_one_service_icon_3').change(function(e) {
    $('#service_icon_3_input').removeClass().addClass('fa fa-' + this.value + ' fa-2x');
   });

   $('#template_one_service_icon_4').change(function(e) {
    $('#service_icon_4_input').removeClass().addClass('fa fa-' + this.value + ' fa-2x');
   });
  
   $('#template_one_service_icon_1').change(function(e) {
    $('#service_icon_1_show').removeClass().addClass('fa fa-' + this.value + ' fa-4x');
   });
  
   $('#template_one_service_icon_2').change(function(e) {
    $('#service_icon_2_show').removeClass().addClass('fa fa-' + this.value + ' fa-4x');
   });
  
   $('#template_one_service_icon_3').change(function(e) {
    $('#service_icon_3_show').removeClass().addClass('fa fa-' + this.value + ' fa-4x');
   });
  
   $('#template_one_service_icon_4').change(function(e) {
    $('#service_icon_4_show').removeClass().addClass('fa fa-' + this.value + ' fa-4x');
   });
  
   $('#template_one_service_title_1').keyup(function() {
    $('#service_title_1_show').html($(this).val());
   });
  
   $('#template_one_service_text_1').keyup(function() {
    $('#service_text_1_show').html($(this).val());
   });
  
   $('#template_one_service_title_2').keyup(function() {
    $('#service_title_2_show').html($(this).val());
   });
  
   $('#template_one_service_text_2').keyup(function() {
    $('#service_text_2_show').html($(this).val());
   });
  
   $('#template_one_service_title_3').keyup(function() {
    $('#service_title_3_show').html($(this).val());
   });
  
   $('#template_one_service_text_3').keyup(function() {
    $('#service_text_3_show').html($(this).val());
   });
  
   $('#template_one_service_title_4').keyup(function() {
    $('#service_title_4_show').html($(this).val());
   });
  
   $('#template_one_service_text_4').keyup(function() {
    $('#service_text_4_show').html($(this).val());
   });
  
   $('#template_one_service_title_5').keyup(function() {
    $('#service_title_5_show').html($(this).val());
   });
  
   $('#template_one_service_text_5').keyup(function() {
    $('#service_text_5_show').html($(this).val());
   });
  });
});