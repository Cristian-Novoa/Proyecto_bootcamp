<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Us |Perfil</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" href="/css/perfil.css">
</head>
<body>
	<div class="container">
		<!--<article class="profile"> -->
			<div class="profile-image">
				<img src="/img/usuario.png"/>
			</div>
			<h2 class="profile-username">Bienvenido otra vez ${usuarioEnSesion.nombre}</h2>
			<div class="profile-actions">
				<a href="/editar"><button class="btn btn--primary">Editar perfil</button></a>
				<button class="btn btn--icon">
					<i class="ph-export"></i>
				</button>
				<button class="btn btn--icon">
					<i class="ph-dots-three-outline-fill"></i>
				</button>
			</div>
			<div>
				
			</div>
		<!--</article> -->
	</div>
	<!-- Estoy teniendo errores con el css cabros. HELPME -->
</body>
</html>