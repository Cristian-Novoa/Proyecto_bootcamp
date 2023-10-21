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
<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
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
		<div class = "formulario-publicacion">
			<h2>Crear Publicacion</h2>
			<form:form action = "/crear" method = "POST" modelAttribute = "nuevaPublicacion">
				<div class = "title-post">
					<form:label path = "titulo">Titulo Publicacion:</form:label>
					<form:input path = "titulo" class = "form-control"/>
					<form:errors path ="titulo" class = "text-danger"/>
				</div>
				<div class = "description-post">
					<form:label path = "descripcion">Descripcion:</form:label>
					<form:textarea path = "descripcion" class = "form-control"/>
					<form:errors path ="descripcion" class = "text-danger"/>
				</div>
				<form:hidden path = "creadorPublicacion" value = "${usuarioEnSesion.id}"/>
				<input type = "Submit" class = "btn btn-success mt-3" value = "Crear Publicacion"/>
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