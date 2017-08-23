var scroll = 0;
$(document).scroll(function() {
    scroll = $(this).scrollTop();
    $('.imgtres').click(function(e) {
      if (scroll <= 0) {
        $('.modal-dialog').css('margin-top', scroll + 'px');
      }
      $('.modal-dialog').css('margin-top', scroll + 'px');
      $('.modal-dialog').css('top', '3%');
      $('#modal1').fadeIn();
    });
    $('.close-modal').click(function() {
      $('#modal1').fadeOut();
    })
  })
