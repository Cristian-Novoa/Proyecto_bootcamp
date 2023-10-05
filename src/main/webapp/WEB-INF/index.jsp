<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
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
</head>
<body>
	<div>
		<div class="container-form login">
        <div class="information">
            <div class="info-childs">
            <img alt="Icon" src="/img/icon_us.png" id = "icon">
                <h2>Bienvenido</h2>
                <p>Para unirte a nuestra comunidad por favor Registrate usando tus datos</p>
                <input type="button" value = "Registrate" id = "sign-up">
            </div>
        </div>
        <div class="form-information">
            <div class="form-information-childs">
                <h2>Iniciar Sesion</h2>
                <div class="icons">
                    <i class='bx bxl-google'></i>
                    <i class='bx bxl-facebook' ></i>
                </div>
                <p>O iniciar sesion con una cuenta</p>
                <!--Aqui ira el form:form-->
                <h2>Inicio de Sesion</h2>
				<p class = "text-danger">${error_login}</p>
                <form action="/login" method = "POST" class = "form">
					<div>
						<label>
							<i class='bx bx-envelope'></i>
							Email	
							<input type = "email" class = "form-control" name = "email">
						</label>
					</div>
					<div>
						<label>
							<i class='bx bx-lock-alt' ></i>
							Password
							<input type = "password" class = "form-control" name = "password">
						</label>
					</div>
					<div class = "text-center">
						<input type = "Submit" class = "btn btn-info mt-3 text-dark" value = "Iniciar sesion">
					</div>
				</form>
            </div>
        </div>
    </div>
	</div>
	<div class="container-form register hide">
        <div class="information">
            <div class="info-childs">
            <img alt="Icon" src="/img/icon_us.png" id = "icon">
                <h2>Bienvenido Nuevamente</h2>
                <p>Para unirte a nuestra comunidad por favor Inicia sesion usando tus datos</p>
                <input type="button" value = "Iniciar sesion" id = "sign-in">
            </div>
        </div>
        <div class="form-information">
            <div class="form-information-childs">
                <h2>Crear una cuenta</h2>
                <div class="icons">
                    <i class='bx bxl-google'></i>
                    <i class='bx bxl-facebook' ></i>
                    <i class='bx bxl-gmail' ></i>
                </div>
                <p>O usa tu email para registrarte</p>
                <!--Aqui ira el form:form-->
                <h2>Registro</h2>
				<p class = "text-danger">${error_login}</p>
                <form:form method="POST" modelAttribute="nuevoUsuario" action="/registro">
					<div class = "font">
						<form:label path="nombre" class = "formLabel">
							<i class='bx bx-user'></i>
							Nombre
							<form:input path="nombre" class="formInput" placeholder = "Ingresa tu nombre completo"/>
						</form:label>
						<form:errors path="nombre" class="text-danger" />
					</div>
					<div class = "font">
						<form:label path="email" class = "formLabel">
							<i class='bx bx-envelope' ></i>
							E-mail
							<form:input path="email" class="formInput" placeholder = "Ingresa un email"/>
						</form:label>
						<form:errors path="email" class="text-danger" />
					</div>
					<div class = "font">
						<form:label path="password" class = "formLabel">
							<i class='bx bx-lock-alt' ></i>
							Password
							<form:password path="password" class="formInput" placeholder = "Ingresa un password"/>
						</form:label>

						<form:errors path="password" class="text-danger" />
					</div>
					<div class = "font">
						<form:label path="confirmacion" class = "formLabel">
							<i class='bx bx-lock-alt' ></i>
							Confirmacion
							<form:password path="confirmacion" class="formInput" placeholder = "Confirmacion password"/>
						</form:label>
						<form:errors path="confirmacion" class="text-danger" />
					</div>
					<input type="submit" value="Registrarme" class="formSubmit" />
				</form:form>
            </div>
        </div>
    </div>
    <script src="js/script.js"></script>
</body>
</html>