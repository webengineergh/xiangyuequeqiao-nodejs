$(function(){
  $.vegas('slideshow', {
    delay:5000,
    backgrounds:[
      { src:'img/others/carousel2.jpg', fade:2000 },
      { src:'img/others/carousel3.jpg', fade:2000 },
      { src:'img/others/carousel4.jpg', fade:2000 },
      { src:'img/others/carousel5.jpg', fade:2000 },
      { src:'img/others/carousel6.jpg', fade:2000 }
    ]
  })('overlay', {
    src:'img/others/overlay.png'
  });

});


  <!-- Mixitup : Grid -->

$(function(){
  $('#Grid').mixitup();
});

  <!-- /Mixitup : Grid -->


$(function() {
  $('a[href*=#]:not([href=#])').click(function() {
    if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'')
      || location.hostname == this.hostname) {

      var target = $(this.hash);
      target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
      if (target.length) {
        $('html,body').animate({
          scrollTop: target.offset().top
        }, 1000);
        return false;
      }
    }
  });
});

  <!-- Navbar -->

$(function(){
  $(document).ready(function() {
    $('#nav').scrollToFixed();
  });
});


//fix
$(function(){
  var fixed=document.getElementById("fixed");
  fixed.style.display="none";
  window.onscroll=function(){
    if(document.body.scrollTop>600){
      fixed.style.display="block";
    }
    else{
      fixed.style.display="none";
    }
  };
});


