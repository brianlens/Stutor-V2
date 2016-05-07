$(document).ready(function() {
  //form id
  $('#new_user')
  .bind('ajax:success', function(evt, data, status, xhr) {
    //function called on status: 200 (for ex.)
    console.log('success');
  })
  .bind("ajax:error", function(evt, xhr, status, error) {
    //function called on status: 401 or 500 (for ex.)
    console.log(xhr.responseText);
  });

});


// Document on instead of document ready because otherwise
// it won't work after navigating pages
$(document).on('click', '.Singupheader', function(event) {
  $(".login").animate({height: 'toggle'}, 350);
});
$(document).on('click', '.register-link', function(event) {
  $(".register").animate({height: 'toggle'}, 350);
  $(".login").animate({height: 'toggle'}, 350);
});
$(document).on('click', '.login-link', function(event) {
  $(".login").animate({height: 'toggle'}, 350);
  $(".register").animate({height: 'toggle'}, 350);
});
