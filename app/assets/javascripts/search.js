$(document).on('click', '.radio-topic', function(event) {
  $(".radio-subject").prop('checked', false);
  $(".radio-stutor").prop('checked', false);
  $(".search-subject").hide(350);
  $(".search-topic").show(350);
  $(".search-stutor").hide(350);


});
$(document).on('click', '.radio-subject', function(event) {
  $(".radio-topic").prop('checked', false);
  $(".radio-stutor").prop('checked', false);
  $(".search-subject").show(350);
  $(".search-topic").hide(350);
  $(".search-stutor").hide(350);

});
$(document).on('click', '.radio-stutor', function(event) {
  $(".radio-topic").prop('checked', false);
  $(".radio-subject").prop('checked', false);
  $(".search-subject").hide(350);
  $(".search-topic").hide(350);
  $(".search-stutor").show(350);
});
