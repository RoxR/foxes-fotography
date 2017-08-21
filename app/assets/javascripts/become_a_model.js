$(document).on('turbolinks:load', function() {

  var LIMIT_SIZE_MB = 10
  var whitelisted_extensions = ['jpg', 'jpeg', 'gif', 'png', 'bmp', 'webp'];

  function isFileTooLarge(file) {
    return file.size / Math.pow(1024,2) > LIMIT_SIZE_MB
  }

  function isFileExtensionValid(file) {
    var ext = file.name.split('.').slice(-1).toString().toLowerCase();
    if($.inArray(ext, whitelisted_extensions) === 0) {
      return true;
    }
    return false;
  }
  
  $('#become_a_model input[type=file]').change(function(e) {
    var input = $(e.currentTarget);
    var file = input[0].files[0];
    if(!isFileExtensionValid(file)) {
      alert('Invalid file format. Supported file formats are: ' + whitelisted_extensions);
      input.val('');
      return false;
    }
    if(isFileTooLarge(file)) {
      alert('Picture size too big (over ' + LIMIT_SIZE_MB + ' MB)');
      input.val('');
      return false;
    } 
    var preview = input.closest('.img-placeholder').find('img');
    var reader = new FileReader();
    reader.onload = function(ev) {
      preview.attr("src", ev.target.result);
    };
    reader.readAsDataURL(file);
    
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