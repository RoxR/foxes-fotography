$(document).on('turbolinks:load', function() {
  $(document).on('click', '.model', function() {
    var id = $(this).data('id');
    window.location.href = 'models/' + id;
  });
});