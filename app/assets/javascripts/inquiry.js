$(document).on('turbolinks:load', function() {
  var form = $('#inquiry-form');
  var existing_inquirer = $('#existing-inquirer');
  var email = Storage.get('inquired_email');
  var name = Storage.get('inquired_name');
  var phone = Storage.get('inquired_phone')
  var message = Storage.get('inquired_message')

  if(email !== null) {
    existing_inquirer.html(HandlebarsTemplates['existing_inquirer']({
      email: email,
      name: name,
      phone: phone,
      message: message
    }));
    form.addClass('hide');
    existing_inquirer.removeClass('hide');

    $(document).on('click', '#create-additional-inquiry', function(e) {
      e.preventDefault();
      form.removeClass('hide');
      existing_inquirer.addClass('hide');
    });
  }

  form.submit(function(e) {
    var data = form.serializeObject();
    e.preventDefault();
    $.ajax({
      url: '/contact',
      type: 'POST',
      data: data
    }).success(function() {
      Storage.set('inquired_name', data.name);
      Storage.set('inquired_email', data._replyto);
      Storage.set('inquired_phone', data.phone);
      Storage.set('inquired_message', data.message);
      form.off('submit');
      form.submit();
    });
  });
});