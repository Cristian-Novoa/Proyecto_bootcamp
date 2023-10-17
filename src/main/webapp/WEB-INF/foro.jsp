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
	<header class="header">
        <a href="/dashboard" class = "logo"><img alt="icono" src="img/icon_home.png"></a>
        <nav class="navbar">
            <a href="/dashboard">Home</a>
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
    	<div class = "content-post">
    		<table class = "table table-sm table-striped table-bordered mt-5 ml-5 mr-5">
    			<thead>
    				<tr class = "text-center align-items-center">
    					<th>Creador Publicacion</th>
    					<th>Titulo Publicacion</th>
    				</tr>
    			</thead>
    			<tbody>
    				<c:forEach items = "${publicaciones}" var = "publicacion">
    					<tr>
    						<td><i class='bx bxs-user-circle'></i>${publicacion.creadorPublicacion.nombre}</td>
    						<td><a href = "#">${publicacion.descripcion}</a></td>
    					</tr>
    				</c:forEach>
    			</tbody>
    		</table>  	
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