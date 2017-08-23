$(document).scroll(function() {
    var scroll = $(this).scrollTop();
    $('.imgtres').click(function(e) {

      $('.modal-dialog').css('margin-top', scroll + 'px');

      $('#modal1').fadeIn();
      console.log(scroll);
    });
    $('.close-modal').click(function() {
      $('#modal1').fadeOut();
    })
  })
