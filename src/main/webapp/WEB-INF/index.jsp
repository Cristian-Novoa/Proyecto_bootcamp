<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>US Sesion</title>
<link rel="stylesheet" href="/css/style.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700&display=swap" rel="stylesheet">
<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
</head>
<body>
	<div class="container">
        <div class="login-box">
            <form action="/login" method = "POST">
            	<div class = "text-error">
        			<p>${error_login}</p>
        		</div>
                <h2>Inicio de Sesion</h2>
                <div class="input-box">
                    <span class="icon"><i class='bx bx-user'></i></span>
                    <input type="email" name="email" id="email" placeholder="Ingresa un email">
                </div>
                <div class="input-box">
                    <span class="icon"><i class='bx bx-lock-alt'></i></span>
                    <input type="password" name="password" id="password" placeholder="Ingresa un password">
                </div>
                <button type="submit">Iniciar Sesion</button>
                <div class="register-link">
                    <a href="/registro">No tienes una cuenta? Crea una</a>
                </div>
            </form>
        </div>
    </div>
</body>
</html>