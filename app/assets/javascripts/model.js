$(document).on('turbolinks:load', function() {
  $(document).on('click touchstart', '.model', function() {
    var id = $(this).data('id');
    window.location.href = 'models/' + id;
  });

  $('.slider-for').slick({
    slidesToShow: 1,
    arrows: false,
    fade: true,
    asNavFor: '.slider-nav'
  });

  $('.slider-nav').slick({
    slidesToShow: 3,
    asNavFor: '.slider-for',
    dots: true,
    centerMode: true,
    focusOnSelect: true
  });
});