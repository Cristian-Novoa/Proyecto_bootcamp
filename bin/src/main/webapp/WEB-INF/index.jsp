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
                <a href="/registro">Registrarte</a>
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
</body>
</html>