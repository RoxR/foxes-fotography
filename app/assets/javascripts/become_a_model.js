$(document).on('turbolinks:load', function() {
  $('#become_a_model input[type=file]').change(function(e) {
    var input = $(e.currentTarget);
    var preview = input.closest('.img-placeholder').find('img');
    var reader = new FileReader();
    reader.onload = function(ev) {
      preview.attr("src", ev.target.result);
    };
    reader.readAsDataURL(input[0].files[0]);
  });
  $('#form-submit-btn').on('click', function(e) {
    e.preventDefault();
    var submitBtn = $('#form-submit-btn');
    $('#form-submit').addClass('processing');
    submitBtn.val('Processing').prop('disabled', true);
    var theForm = $('#become_a_model');
    theForm.submit();
    return false;
  });
});