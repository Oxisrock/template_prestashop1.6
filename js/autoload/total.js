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
