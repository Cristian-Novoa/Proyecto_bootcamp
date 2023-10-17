<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Crear nueva publicacion</title>
<link rel="stylesheet" href="/css/publicacion.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
	<div class = "container-fluid">
		<div class = "formulario-publicacion">
			<h2>Crear Publicacion</h2>
			<form:form action = "/crear" method = "POST" modelAttribute = "nuevaPublicacion">
				<div>
					<form:label path = "titulo">Titulo Publicacion:</form:label>
					<form:input path = "titulo" class = "form-control"/>
					<form:errors path ="titulo" class = "text-danger"/>
				</div>
				<div>
					<form:label path = "descripcion">Descripcion:</form:label>
					<form:textarea path = "descripcion" class = "form-control"/>
					<form:errors path ="descripcion" class = "text-danger"/>
				</div>
				<form:hidden path = "creadorPublicacion" value = "${usuarioEnSesion.id}"/>
				<input type = "Submit" class = "btn btn-success mt-3" value = "Crear Publicacion"/>
			</form:form>
		</div>
	</div>
</body>
</html>