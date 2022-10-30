

window.onload = function () {
    $("#email").focus();
    //var valorEmail =  document.getElementById("email").focus();
  }

  //Volver desde cualquier vista al Login
  $(".volverViewLogin").click(function (e) {
    e.preventDefault();

    $(".cajaLogin").fadeIn(1000);
    $(".formRegisterUser").hide();
  });


  //Mostrar vista de Crear cuenta de User
  $(".createUser").click(function (e) {
    e.preventDefault();

    $(".formRegisterUser").fadeIn(1000);
    $(".cajaLogin").hide();
  });
  
