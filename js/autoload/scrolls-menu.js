// Modifica el Navbar al hacer scroll //
    $(document).ready(function(){
        var altura = $('.medir').offset().top;

      $(window).on('scroll', function(){
        if ( $(window).scrollTop() > altura ){
          $('.ver').addClass('nover');
        } else {
          $('.ver').removeClass('nover');
        }
      });
    });

    // Modifica el Navbar en tablets //
    $(document).ready(function(){
        var altura = $('.medir').offset().top;

      $(window).on('scroll', function(){
        if ( $(window).scrollTop() > altura ){
          $('.tablet').addClass('ocultar');
        } else {
          $('.tablet').removeClass('ocultar');
        }
      });
    });

    // Muestra el buscador al hacer scroll //
    $(document).ready(function(){
        var altura = $('.medir').offset().top;

      $(window).on('scroll', function(){
        if ( $(window).scrollTop() > altura ){
          $('.buscar').addClass('mostrar');
        } else {
          $('.buscar').removeClass('mostrar');
        }
      });
    });
