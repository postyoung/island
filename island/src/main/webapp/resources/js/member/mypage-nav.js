$(document).ready(function() {
  $('.menu_bar li').hover(
    function() {
      $('ul', this).slideDown(100);
    },
    function() {
      $('ul', this).slideUp(100);
    }
  );
});