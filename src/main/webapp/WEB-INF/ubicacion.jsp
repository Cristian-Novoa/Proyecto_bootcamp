<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Nueva Ubicacion</title>
<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
<link rel="stylesheet" href="/css/ubicacion.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
	<header class="encabezado">
        <a href="/dashboard" class = "logo"><img alt="icono" src="img/icon_home.png"></a>
        <nav class="navbarra">
            <a href="/dashboard">Inicio</a>
            <a href="/foro">Comunidad</a>
            <a href="/perfil">Mi Perfil</a>
        </nav>
        <div class = "btn-logout">
        	<a href="/logout" class = "btn btn-danger">Cerrar sesion</a>
        </div>
    </header>
	<div class = "container-fluid">
		<div class = "box-form">
			<form:form action = "/nuevaubicacion" method = "POST" modelAttribute = "nuevaUbicacion">
				<div class = "user-region">
					<form:label path = "region">Agrega una region</form:label>
					<form:select path="region" class = "form-select">
						<c:forEach items = "${regiones}" var = "region">
							<form:option value="${region}">${region}</form:option>
						</c:forEach>
					</form:select>	
				</div>
				<div class = "user-comuna">
					<form:label path = "comuna">Agrega una comuna</form:label>
					<form:select path="comuna" class = "form-select">
						<c:forEach items = "${comunas}" var = "comuna">
							<form:option value="${comuna}">${comuna}</form:option>
						</c:forEach>
					</form:select>	
				</div>
				<div class = "user-calle">
					<form:label path="calle">Ingresa tu Calle</form:label>
					<form:input path = "calle" class = "form-control"/>
					<form:errors path = "calle" class = "text-danger"/>
				</div>
				<form:hidden path = "usuario" value = "${usuarioEnSesion.id}"/>
				<input type = "submit" class = "btn btn-info" value = "Guardar Direccion">
			</form:form>
		</div>
	</div>
	<footer class = "pie-pagina">
        <div class = "grupo-1">
    	    <div class = "box">
    			<figure>
    				<a href = "#">
    					<img alt="icon" src="/img/icon_home.png">
    				</a>
    			</figure>
    		</div>
    		<div class = "box">
    			<h2>SOBRE NOSOTROS</h2>
    			<p>
    			Nuestra misión es unir comunidades, promover seguridad y comunicación, fortalecer la colaboración vecinal 
    			y prevenir la delincuencia. 
    			</p>
    		</div>
    		<div class = "box">
                <h2>CONTACTANOS</h2>
                <div class="red-social">
                    <a href="#"><i class='bx bxl-facebook'></i></a>
                    <a href="#"><i class='bx bxl-instagram' ></i></a>
                    <a href="#"><i class='bx bxl-twitter' ></i></a>
                    <p>todosjuntos@us.security.com</p>
                </div>
            </div>
    	</div>
        <div class="grupo-2">
            <small>&copy; 2023 <b>US</b> - Todos los Derechos Reservados.</small>
        </div>
    </footer>
</body>
</html>