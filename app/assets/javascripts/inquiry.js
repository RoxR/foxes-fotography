$(document).on('turbolinks:load', function() {
  $('#inquiry-form').submit(function(e) {
    var form = $(this);
    e.preventDefault();
    $.ajax({
      url: '/contact',
      type: 'POST',
      data: form.serializeObject()
    }).success(function() {
      form.off('submit');
      form.submit();
    });
  });
});