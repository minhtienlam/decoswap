$(document).ready(function() {
  var scroll_start = 0;
  var startchange = $('#startchange');
  var offset = startchange.offset();
  if (startchange.length) {
    $(document).scroll(function() {
      scroll_start = $(this).scrollTop();
      if (scroll_start > (offset.top - 500)) {
        $('.navbar-wagon').css('animation-name', 'fadeIn' );
        $('.navbar-wagon').css('-webkit-animation-name', 'fadeIn' );
        $('.navbar-wagon').css('animation-duration', '1.0s' );
        $('.navbar-wagon').css('animation-timing-function', 'ease-in-out' );
        $('.navbar-wagon').css('-webkit-animation-duration', '1.0s' );
        $('.navbar-wagon').css('-webkit-animation-timing-function', 'ease-in-out' );
        $('.navbar-wagon').css('visibility', 'visible !important' );

        $(".navbar-wagon").css('background-color', '#282828');
        $(".navbar-wagon").css('margin-top', 0);
        // $(".navbar-wagon-brand img").css('width', 150);

      } else {
        $('.navbar-wagon').css('background-color', 'transparent' );
        $(".navbar-wagon").css('margin-top', 20);
        // $(".navbar-wagon-brand img").css('width', 200);

      }
    });
  }
});

