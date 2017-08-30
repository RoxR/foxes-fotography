$(document).on('turbolinks:load', function() {

  FileUploader.init({
    form_selector: '#become_a_model',
    valid_extensions: ['jpg', 'jpeg', 'gif', 'png', 'bmp', 'webp'],
    max_file_size: 10,
    after_input_change: function(input, file) {
      var reader = new FileReader();
      reader.onload = function(ev) {
        input.closest('.img-placeholder')
          .find('img')
          .attr("src", ev.target.result);
      };
      reader.readAsDataURL(file);
    }
  });

  $('#form-submit-btn').on('click', function(e) {
    e.preventDefault();
    var submitBtn = ;
    $('#form-submit').addClass('processing');
    $('#form-submit-btn')
      .val('Processing')
      .prop('disabled', true);
    var theForm = $('#become_a_model');
    theForm.submit();
    return false;
  });
});