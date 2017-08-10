document.addEventListener("turbolinks:load", function(){
  $(document).ready(function() {

    // home page parallax
    var wHeight = $(window).height();

    function parallax() {
      var pHeight = $(this).outerHeight();
      var pMiddle = pHeight / 2;
      var wMiddle = wHeight / 2;
      var fromTop = $(this).offset().top;
      var scrolled = $(window).scrollTop();
      var speed = $(this).attr('data-parallax-speed');
      var rangeA = (fromTop - wHeight);
      var rangeB = (fromTop + pHeight);
      var rangeC = (fromTop - wHeight);
      var rangeD = (pMiddle + fromTop) - (wMiddle + (wMiddle / 2));

      if (rangeA < 0) {
        rangeA = 0;
        rangeB = wHeight
      }

      var percent = (scrolled - rangeA) / (rangeB - rangeA);
      percent = percent * 100;
      percent = percent * speed;
      percent = percent.toFixed(2);

      var animFromBottom = (scrolled - rangeC) / (rangeD - rangeC);
      animFromBottom = animFromBottom.toFixed(2);

      if (animFromBottom >= 1) {
        animFromBottom = 1;
      }

      $(this).css('background-position', 'center ' + percent + '%');
      $(this).find('.parallax-content').css('opacity', animFromBottom);
      $(this).find('.parallax-content').css('transform', 'scale(' + animFromBottom + ')');
    }
    $('.parallax').each(parallax);
    $(window).scroll(function(e) {
      $('.parallax').each(parallax);
    });


    // profile page
    $(".profilepost").hide();
    $(".profilejob").hide();

    $(".portfoliobtn").click(
      function(){
        $(".profilepost").hide();
        $(".profilejob").hide();
        $(".profilegallery").show();
      }
    )

    $(".postbtn").click(
      function(){
        $(".profilegallery").hide();
        $(".profilejob").hide();
        $(".profilepost").show();
      }
    )

    $(".jobbtn").click(
      function(){
        $(".profilepost").hide();
        $(".profilegallery").hide();
        $(".profilejob").show();
      }
    )

    $(".biotext").hide();
    $(".biohide").hide();

    $(".bioshow").click(
      function(){
        $(".biotext").show();
        $(".bioshow").hide();
        $(".biohide").show();
        $(".userprofilediv").animate({
          height: '30vh'
        }, 1000);
      }
    )

    $(".biohide").click(
      function(){
        $(".biotext").hide();
        $(".bioshow").show();
        $(".biohide").hide();
        $(".userprofilediv").animate({
          height: '20vh'
        }, 1000);
      }
    )

  });
});
