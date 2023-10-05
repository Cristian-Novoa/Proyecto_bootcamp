<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
  <!DOCTYPE html>
<html>

 <head>
<meta charset="ISO-8859-1">
<title>US Sesion</title>
<link rel="stylesheet" href="css/style.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700&display=swap" rel="stylesheet">
<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>

  <body>
     <div class="container-form login">
     	<div class="information">
      	 		</div>
                <div class="container-form register hide">
                    <div class="information">
                        <div class="info-childs">
                            <img alt="Icon" src="/img/icon_us.png" id="icon">
                            <h2>Bienvenido Nuevamente</h2>
                            <p>Para unirte a nuestra comunidad por favor Inicia sesion usando tus datos</p>
                            <a href = "/" class = "btn btn-success">Iniciar sesion</a>
                        </div>
                    </div>
                    <div class="form-information">
                        <div class="form-information-childs">
                            <h2>Crear una cuenta</h2>
                            <div class="icons">
                                <i class='bx bxl-google'></i>
                                <i class='bx bxl-facebook'></i>
                            </div>
                            <p>O usa tu email para registrarte</p>
                            <!--Aqui ira el form:form-->
                            <h2>Registro</h2>
                            <p class="text-danger">${error_login}</p>
                            <form:form method="POST" modelAttribute="nuevoUsuario" action="/registro">
                                <div class="font">
                                    <form:label path="nombre" class="formLabel">
                                        <i class='bx bx-user'></i>
                                        Nombre
                                        <form:input path="nombre" class="formInput"
                                            placeholder="Ingresa tu nombre completo" />
                                    </form:label>
                                    <form:errors path="nombre" class="text-danger" />
                                </div>
                                <div class="font">
                                    <form:label path="email" class="formLabel">
                                        <i class='bx bx-envelope'></i>
                                        E-mail
                                        <form:input path="email" class="formInput" placeholder="Ingresa un email" />
                             </form:label>
                             <form:errors path="email" class="text-danger" />
                         </div>
                         <div class="font">
                                    <form:label path="password" class="formLabel">
                                 <i class='bx bx-lock-alt'></i>
                                 Password
                                 <form:password path="password" class="formInput"
                                     placeholder="Ingresa un password" />
                                    </form:label>

                             <form:errors path="password" class="text-danger" />
                                </div>
                         <div class="font">
                             <form:label path="confirmacion" class="formLabel">
                                        <i class='bx bx-lock-alt'></i>
                                 Confirmacion
                                 <form:password path="confirmacion" class="formInput"
                                            placeholder="Confirmacion password" />
                             </form:label>
                                    <form:errors path="confirmacion" class="text-danger" />
                        </div>
                                <input type="submit" value="Registrarme" class="formSubmit" />
                     </form:form>
                </div>
            </div>
      </div>
     </div> 
   </body>
</html>