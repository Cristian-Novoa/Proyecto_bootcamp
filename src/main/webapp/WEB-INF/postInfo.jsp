<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Informacion de Post</title>
<link rel="stylesheet" href="/css/postInfo.css">
<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
	<header class="encabezado">
        <a href="/dashboard" class = "logo"><img alt="icono" src="/img/icon_home.png"></a>
        <nav class="navbarra">
            <a href="/dashboard">Inicio</a>
            <a href="/foro">Comunidad</a>
            <a href="/perfil">Mi Perfil</a>
        </nav>
        <div class = "btn-logout">
        	<a href="/logout" class = "btn btn-danger">Cerrar sesion</a>
        </div>
    </header>
    <main class = "main">
    	<div class = "user">
    		<p>Creador ${publicacion.creadorPublicacion.nombre}</p>
    	</div>
    	<div class = "title">
    		<h2>${publicacion.titulo}</h2>
    	</div>
    	<div class = "content">
    		<div class = "row">
    			<div class = "left-col col-6">
    				<div class = "description-post">
    					<p>${publicacion.descripcion}</p>
    				</div>
    				<div class = "box-comment">
    					<div class = "comment-title"><h2>Comentarios</h2></div>
    					
    				</div>
    			</div>
    			<div class = "right-col col-6">
    				<div class = "comment">
    					<div class = "comments">
    						<h2>Puedes publicar un comentario aqui</h2>
    						<form:form action = "/new" method = "POST" modelAttribute = "nuevoMensaje">
    							<div>
    								<form:label path = "">Ingresa un comentario</form:label>
    								<form:textarea path = "" class = "form-control"/>
    								<form:errors path = "" class = "text-danger"/>
    							</div>
    							<input type = "submit" value = "Comentar" class = "btn btn-info"/>
    						</form:form>
    					</div>
    				</div>
    			</div>
    		</div>
    	</div>
    </main>
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
    			<p></p>
    			<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestiae, animi?</p>
    		</div>
    		<div class = "box">
                <h2>SIGUENOS</h2>
                <div class="red-social">
                    <a href="#"><i class='bx bxl-facebook'></i></a>
                    <a href="#"><i class='bx bxl-instagram' ></i></a>
                    <a href="#"><i class='bx bxl-twitter' ></i></a>
                </div>
            </div>
    	</div>
        <div class="grupo-2">
            <small>&copy; 2023 <b>US</b> - Todos los Derechos Reservados.</small>
        </div>
    </footer>
</body>
</html>