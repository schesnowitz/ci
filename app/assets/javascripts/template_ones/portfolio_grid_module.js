$(document).ready(function() {
  document.addEventListener("turbolinks:load", function() {
  $('#template_one_portfolio_grid_title').keyup(function() {
    $('#portfolio_grid_title_show').html($(this).val());
    });

    $('#template_one_portfolio_grid_text').keyup(function() {
    $('#portfolio_grid_text_show').html($(this).val());
    });
  });
});