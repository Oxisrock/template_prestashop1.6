/* Set the width of the side navigation to 250px and the left margin of the page content to 250px and add a black background color to body */
function openNav() {
    document.getElementById("mySidenav").style.marginLeft = "0px";

}

/* Set the width of the side navigation to 0 and the left margin of the page content to 0, and the background color of body to white */
function closeNav() {
    document.getElementById("mySidenav").style.marginLeft = "-300px";
}

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
