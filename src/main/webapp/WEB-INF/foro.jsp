<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="/css/foro.css">
<title>Foro</title>
</head>
<body>
	<header class="header">
        <a href="/dashboard" class = "logo"><img alt="icono" src="img/icon_home.png"></a>
        <nav class="navbar">
            <a href="/dashboard">Home</a>
            <a href="">Comunidad</a>
            <a href="">Servicios</a>
            <a href="/perfil">Mi Perfil</a>
        </nav>
    </header>
    <div class = "contenido">
    	<div class = "formulario-publicacion">
    		<h2>Crear una Publicacion</h2>
    		<form:form action = "/crear" method = "POST" modelAttribute = "nuevaPublicacion">
    			<div>
    				<form:label path="titulo">Titulo Publicacion:</form:label>
    				<form:input path="titulo"/>
    				<form:errors path = "titulo"/>
    			</div>
    			<div>
    				<form:label path="descripcion">Descripcion Publicacion:</form:label>
    				<form:input path="descripcion"/>
    				<form:errors path = "descripcion"/>
    			</div>
    		</form:form>
    	</div>
    </div>
</body>
</html>