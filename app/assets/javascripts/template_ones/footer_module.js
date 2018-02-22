$(document).ready(function() {
  document.addEventListener("turbolinks:load", function() {
   $('#template_one_footer_hide_telephone').click(function() {
    if ($(this).is(':checked')) {
     $("#hideTele").hide();
    } else {
     $("#hideTele").show();
    }
   });
  
   $('#template_one_footer_hide_telephone').click(function() {
    if ($(this).is(':checked')) {
     $("#hide_telephone_input").fadeOut();
    } else {
     $("#hide_telephone_input").fadeIn();
    }
   });
  
   $('#template_one_footer_hide_address').click(function() {
    if ($(this).is(':checked')) {
     $("#hideAddress").hide();
    } else {
     $("#hideAddress").show();
    }
   });
  
   $('#template_one_footer_hide_address').click(function() {
    if ($(this).is(':checked')) {
     $("#hide_address_input").fadeOut();
    } else {
     $("#hide_address_input").fadeIn();
    }
   });
  
   $('#template_one_footer_hide_email').click(function() {
    if ($(this).is(':checked')) {
     $("#hideEmail").hide();
    } else {
     $("#hideEmail").show();
    }
   });
  
   $('#template_one_footer_hide_email').click(function() {
    if ($(this).is(':checked')) {
     $("#hide_email_input").fadeOut();
    } else {
     $("#hide_email_input").fadeIn();
    }
   });
  
   $('#template_one_footer_hide_social_1').click(function() {
    if ($(this).is(':checked')) {
     $("#hide_social_1_input").fadeOut();
    } else {
     $("#hide_social_1_input").fadeIn();
    }
   });
  
   $('#template_one_footer_hide_social_2').click(function() {
    if ($(this).is(':checked')) {
     $("#hide_social_2_input").fadeOut();
    } else {
     $("#hide_social_2_input").fadeIn();
    }
   });
  
   $('#template_one_footer_hide_social_3').click(function() {
    if ($(this).is(':checked')) {
     $("#hide_social_3_input").fadeOut();
    } else {
     $("#hide_social_3_input").fadeIn();
    }
   });
  
   $('#template_one_footer_hide_social_4').click(function() {
    if ($(this).is(':checked')) {
     $("#hide_social_4_input").fadeOut();
    } else {
     $("#hide_social_4_input").fadeIn();
    }
   });
  
   $('#template_one_footer_hide_social_5').click(function() {
    if ($(this).is(':checked')) {
     $("#hide_social_5_input").fadeOut();
    } else {
     $("#hide_social_5_input").fadeIn();
    }
   });
  
   $('#template_one_footer_hide_social_6').click(function() {
    if ($(this).is(':checked')) {
     $("#hide_social_6_input").fadeOut();
    } else {
     $("#hide_social_6_input").fadeIn();
    }
   });
  
   $('#template_one_footer_hide_social_1').click(function() {
    if ($(this).is(':checked')) {
     $("#hide_social_1").hide();
    } else {
     $("#hide_social_1").show();
    }
   });
  
   $('#template_one_footer_hide_social_2').click(function() {
    if ($(this).is(':checked')) {
     $("#hide_social_2").hide();
    } else {
     $("#hide_social_2").show();
    }
   });
  
   $('#template_one_footer_hide_social_3').click(function() {
    if ($(this).is(':checked')) {
     $("#hide_social_3").hide();
    } else {
     $("#hide_social_3").show();
    }
   });
  
   $('#template_one_footer_hide_social_4').click(function() {
    if ($(this).is(':checked')) {
     $("#hide_social_4").hide();
    } else {
     $("#hide_social_4").show();
    }
   });
  
   $('#template_one_footer_hide_social_5').click(function() {
    if ($(this).is(':checked')) {
     $("#hide_social_5").hide();
    } else {
     $("#hide_social_5").show();
    }
   });
  
   $('#template_one_footer_hide_social_6').click(function() {
    if ($(this).is(':checked')) {
     $("#hide_social_6").hide();
    } else {
     $("#hide_social_6").show();
    }
   });
  
   $('#template_one_footer_icon_telephone').change(function(e) {
    $('#footer_icon_telephone_input').removeClass().addClass('fa fa-' + this.value + ' fa-fw fa-2x');
   });
  
   $('#template_one_footer_icon_address').change(function(e) {
    $('#footer_icon_address_input').removeClass().addClass('fa fa-' + this.value + ' fa-fw fa-2x');
   });
  
   $('#template_one_footer_icon_email').change(function(e) {
    $('#footer_icon_email_input').removeClass().addClass('fa fa-' + this.value + ' fa-fw fa-2x');
   });
  
   $('#template_one_footer_social_icon_1').change(function(e) {
    $('#footer_social_icon_1_input').removeClass().addClass('fa fa-' + this.value + ' fa-fw fa-2x');
   });
  
   $('#template_one_footer_social_icon_2').change(function(e) {
    $('#footer_social_icon_2_input').removeClass().addClass('fa fa-' + this.value + ' fa-fw fa-2x');
   });
  
   $('#template_one_footer_social_icon_3').change(function(e) {
    $('#footer_social_icon_3_input').removeClass().addClass('fa fa-' + this.value + ' fa-fw fa-2x');
   });
  
   $('#template_one_footer_social_icon_4').change(function(e) {
    $('#footer_social_icon_4_input').removeClass().addClass('fa fa-' + this.value + ' fa-fw fa-2x');
   });
  
   $('#template_one_footer_social_icon_5').change(function(e) {
    $('#footer_social_icon_5_input').removeClass().addClass('fa fa-' + this.value + ' fa-fw fa-2x');
   });
  
   $('#template_one_footer_social_icon_6').change(function(e) {
    $('#footer_social_icon_6_input').removeClass().addClass('fa fa-' + this.value + ' fa-fw fa-2x');
   });
  
   $('#template_one_footer_email_title').keyup(function() {
    $('#footer_email_title_show').html($(this).val());
   });
  
   $('#template_one_footer_email_address').keyup(function() {
    $('#footer_email_address_show').html($(this).val());
   });
  
   $('#template_one_footer_telephone_title').keyup(function() {
    $('#footer_telephone_title_show').html($(this).val());
   });
  
   $('#template_one_footer_telephone_number').keyup(function() {
    $('#footer_telephone_number_show').html($(this).val());
   });
  
   $('#template_one_footer_address_title').keyup(function() {
    $('#footer_address_title_show').html($(this).val());
   });
  
   $('#template_one_footer_address_street').keyup(function() {
    $('#footer_address_street_show').html($(this).val());
   });
  
   $('#template_one_footer_address_city').keyup(function() {
    $('#footer_address_city_show').html($(this).val());
   });
  
   $('#template_one_footer_address_state').keyup(function() {
    $('#footer_address_state_show').html($(this).val());
   });
  
   $('#template_one_footer_address_postal_code').keyup(function() {
    $('#footer_address_postal_code_show').html($(this).val());
   });
  
   $('#template_one_footer_icon_telephone').change(function(e) {
    $('#footer_icon_telephone_show').removeClass().addClass('fa fa-' + this.value);
   });
  
   $('#template_one_footer_icon_address').change(function(e) {
    $('#footer_icon_address_show').removeClass().addClass('fa fa-' + this.value);
   });
  
   $('#template_one_footer_icon_email').change(function(e) {
    $('#footer_icon_email_show').removeClass().addClass('fa fa-' + this.value);
   });
  
   $('#template_one_footer_social_icon_1').change(function(e) {
    $('#footer_social_icon_1_show').removeClass().addClass('fa fa-' + this.value + ' fa-fw fa-2x');
   });
  
   $('#template_one_footer_social_icon_2').change(function(e) {
    $('#footer_social_icon_2_show').removeClass().addClass('fa fa-' + this.value + ' fa-fw fa-2x');
   });
  
   $('#template_one_footer_social_icon_3').change(function(e) {
    $('#footer_social_icon_3_show').removeClass().addClass('fa fa-' + this.value + ' fa-fw fa-2x');
   });
  
   $('#template_one_footer_social_icon_4').change(function(e) {
    $('#footer_social_icon_4_show').removeClass().addClass('fa fa-' + this.value + ' fa-fw fa-2x');
   });
  
   $('#template_one_footer_social_icon_5').change(function(e) {
    $('#footer_social_icon_5_show').removeClass().addClass('fa fa-' + this.value + ' fa-fw fa-2x');
   });
  
   $('#template_one_footer_social_icon_6').change(function(e) {
    $('#footer_social_icon_6_show').removeClass().addClass('fa fa-' + this.value + ' fa-fw fa-2x');
   });
  });
});