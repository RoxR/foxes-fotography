$(document).on('turbolinks:load', function(){
    
    $('#picture_1').change(function(event){
       var preview = $(".picture img[data-id='1']");
       var input = $(event.currentTarget);
       var file = input[0].files[0];
       var reader = new FileReader();
       reader.onload = function(e){
           image_base64 = e.target.result;
           preview.attr("src", image_base64);
       };
       reader.readAsDataURL(file);
    });
    $('#picture_2').change(function(event){
       var preview = $(".picture img[data-id='2']");
       var input = $(event.currentTarget);
       var file = input[0].files[0];
       var reader = new FileReader();
       reader.onload = function(e){
           image_base64 = e.target.result;
           preview.attr("src", image_base64);
       };
       reader.readAsDataURL(file);
    });
    $('#picture_3').change(function(event){
       var preview = $(".picture img[data-id='3']");
       var input = $(event.currentTarget);
       var file = input[0].files[0];
       var reader = new FileReader();
       reader.onload = function(e){
           image_base64 = e.target.result;
           preview.attr("src", image_base64);
       };
       reader.readAsDataURL(file);
    });
    $('#form-submit-btn').on('click', function(e) {
      e.preventDefault();
      var submitBtn = $('#form-submit-btn')
      submitBtn.val('Processing').prop('disabled', true);
      var theForm = $('#become_a_model');
      theForm.submit();
      return false;
    });
});