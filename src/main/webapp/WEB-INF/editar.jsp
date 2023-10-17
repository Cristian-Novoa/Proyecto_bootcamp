<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="/css/editar.css">
<title>Editar Perfil</title>
</head>
<body>
	<div class="container">
		<div class="center-content">
        	<img src="/img/usuario.png" alt="Imagen de perfil">
    	</div>
    	<div class="ubi-content">
			<h1>Editar Ubicacion</h1>
			<form:form action="/actualizar" method="post" modelAttribute="nuevaDireccion">
			<div>
				<form:label path="region">Region</form:label>
				<form:input path="region" class="form-control" />
				<form:errors path="region" class="text-danger" />
			</div>
			<div>
				<form:label path="comuna">Comuna</form:label>
				<form:input path="comuna" class="form-control" />
				<form:errors path="comuna" class="text-danger" />
			</div>
			<div>
				<form:label path="calle">Calle</form:label>
				<form:input path="calle" class="form-control" />
				<form:errors path="calle" class="text-danger" />
			</div>
			<form:hidden path="id" value="${usuarioEnSesion.id}"/>
			
			<input type="hidden" value="put" name="_method" />
			
			<input type="submit" class="btn btn-success mt-3" value="Guardar" />
			</form:form>
		</div>
    </div>
</body>
</html>