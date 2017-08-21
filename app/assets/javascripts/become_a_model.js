$(document).on('turbolinks:load', function() {

  var LIMIT_SIZE_MB = 10
  
  function isFileTooLarge(file) {
    return file.size / Math.pow(1024,2) > LIMIT_SIZE_MB
  }

  var picture_too_big = false;
  $('#become_a_model input[type=file]').change(function(e) {
    var input = $(e.currentTarget);
    var file = input[0].files[0];
    if(isFileTooLarge(file)) {
      alert('Picture size too big (over ' + LIMIT_SIZE_MB + ' MB)');
      input.val('');
    } else {
      var preview = input.closest('.img-placeholder').find('img');
      var reader = new FileReader();
      reader.onload = function(ev) {
        preview.attr("src", ev.target.result);
      };
      reader.readAsDataURL(file);
    }
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