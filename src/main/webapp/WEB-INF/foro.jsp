<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="/css/foro.css">
<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<title>Foro</title>
</head>
<body>
	<header class="encabezado">
        <a href="/dashboard" class = "logo"><img alt="icono" src="img/icon_home.png"></a>
        <nav class="navbarra">
            <a href="/dashboard">Inicio</a>
            <a href="">Comunidad</a>
            <a href="">Servicios</a>
            <a href="/perfil">Mi Perfil</a>
        </nav>
    </header>
    <div class = "midle-content">
    	<div class = "midle-title">
    		<h2>Publicaciones</h2>
    	</div>
    	<div class = "btn-publicacion">
    		<a href = "/nueva">Crea tu publicacion</a>
    	</div>
    </div>
    <c:forEach items = "${publicaciones}" var = "publicacion">
    	<div class = "boxuser">
    	<div class = "user-left">
    		<i class='bx bx-md bxs-user-circle'></i>
    		<p>${publicacion.creadorPublicacion.nombre}</p>
    	</div>
    	<div class = "user-midle">
    		<h2><a href = "#">${publicacion.titulo}</a></h2>
    		<p>${publicacion.descripcion}</p>
    	</div>
    	<div class = "seccion-comment">
    		<div class = "comments">"89"</div>
    	</div>
    </div>
    </c:forEach>
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
    			<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestiae, animi?</p>
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