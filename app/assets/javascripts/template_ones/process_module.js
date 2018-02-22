$(document).ready(function() {
  document.addEventListener("turbolinks:load", function() {
   $('#template_one_process_icon_1').change(function(e) {
    $('#process_icon_1_show').removeClass().addClass('fa fa-' + this.value + ' rounded-circle');
   });
  
   $('#template_one_process_icon_2').change(function(e) {
    $('#process_icon_2_show').removeClass().addClass('fa fa-' + this.value + ' rounded-circle');
   });
  
   $('#template_one_process_icon_3').change(function(e) {
    $('#process_icon_3_show').removeClass().addClass('fa fa-' + this.value + ' rounded-circle');
   });
  
   $('#template_one_process_icon_1').change(function(e) {
    $('#process_icon_1_input').removeClass().addClass('fa fa-' + this.value + ' fa-fw fa-2x');
   });
  
   $('#template_one_process_icon_2').change(function(e) {
    $('#process_icon_2_input').removeClass().addClass('fa fa-' + this.value + ' fa-fw fa-2x');
   });
  
   $('#template_one_process_icon_3').change(function(e) {
    $('#process_icon_3_input').removeClass().addClass('fa fa-' + this.value + ' fa-fw fa-2x');
   });
  
   $('#template_one_sub_title_1').keyup(function() {
    $('#sub_title_1_show').html($(this).val());
   });
  
   $('#template_one_sub_title_2').keyup(function() {
    $('#sub_title_2_show').html($(this).val());
   });
  
   $('#template_one_sub_title_3').keyup(function() {
    $('#sub_title_3_show').html($(this).val());
   });
  
   $('#template_one_main_process_title').keyup(function() {
    $('#main_process_title_show').html($(this).val());
   });
  
   $('#template_one_main_process_title_text').keyup(function() {
    $('#main_process_title_text_show').html($(this).val());
   });
  
   $('#template_one_process_li_1').keyup(function() {
    $('#process_li_1_show').html($(this).val());
   });
  
   $('#template_one_process_li_2').keyup(function() {
    $('#process_li_2_show').html($(this).val());
   });
  
   $('#template_one_process_li_3').keyup(function() {
    $('#process_li_3_show').html($(this).val());
   });
  
   $('#template_one_process_li_4').keyup(function() {
    $('#process_li_4_show').html($(this).val());
   });
  
   $('#template_one_process_li_5').keyup(function() {
    $('#process_li_5_show').html($(this).val());
   });
  
   $('#template_one_process_li_6').keyup(function() {
    $('#process_li_6_show').html($(this).val());
   });
  
   $('#template_one_process_li_7').keyup(function() {
    $('#process_li_7_show').html($(this).val());
   });
  
   $('#template_one_process_li_8').keyup(function() {
    $('#process_li_8_show').html($(this).val());
   });
  
   $('#template_one_process_li_9').keyup(function() {
    $('#process_li_9_show').html($(this).val());
   });
  
   $('#template_one_process_li_10').keyup(function() {
    $('#process_li_10_show').html($(this).val());
   });
  
   $('#template_one_process_li_11').keyup(function() {
    $('#process_li_11_show').html($(this).val());
   });
  
   $('#template_one_process_li_12').keyup(function() {
    $('#process_li_12_show').html($(this).val());
   });
  });
});