// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery.slick
//= require chosen-jquery
//= require rails-ujs
//= require turbolinks
//= require handlebars.runtime
//= require_tree ./templates
//= require_tree .

$(document).on('turbolinks:load', function() {
  $(document).on('click', '.fa-bars', function(e) {
    $('nav ul.right').toggle();
  });

  $(document).on('mouseleave', 'nav ul.right', function(e) {
    $('nav ul.right').hide();
  });

  $('#carousel').slick({
    // autoplay
    infinite: true,
    dots: true,
    fade: true,
    autoplay: true,
    autoplaySpeed: 2000,
    centerMode: true
  });

  $('.company').on('click', function() {
    window.location.href = '/';
  });

  $('select').chosen({
    width: '100%'
  });

  (function(mark) {
    var i = 0;
    $(mark).on('click', function(e) {
      e.stopPropagation();
      ++i;
      if (i >= 10) {
        window.location.href = '/users/sign_in';
      }
    });
    $(document).on('click', function() {
      i = 0;
    });
  }($('#mark')));
});