<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>US Home</title>
<link rel="stylesheet" href="/css/style.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
	<div class="container font-monospace">
		<nav class = "d-flex align-items-center justify-content-between">
			<img alt="Icon" src="/img/92071.jpg" id = "icon">
			<ul class="nav justify-content-center">
				<li class="nav-item">
   				<a class="nav-link active" aria-current="page" href="#">Home</a>
 				</li>
  				<li class="nav-item">
   					<a class="nav-link" href="#">Comunidad</a>
  				</li>
  				<li class="nav-item">
    				<a class="nav-link" href="#">Servicio</a>
  				</li>
  				<li class="nav-item">
    				<a class="nav-link disabled" aria-disabled="true">US</a>
  				</li>
			</ul>
			<a href = "/logout" class = "btn btn-danger">Cerrar sesion</a>
		</nav>
	</div>
</body>
</html>