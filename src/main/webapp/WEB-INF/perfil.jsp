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
<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
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

	<div class="container text-center">
    	<div class="center-content">
        	<img src="/img/usuario.png" alt="Imagen de perfil">
    	</div>
    	
    	<h2>Bienvenido otra vez ${usuarioEnSesion.nombre}</h2>
    	<div class="profile-actions">
       		 <table class="table table-bordered">
       		 <a href="/editar/${usuarioEnSesion.id}"><button class="btn btn--primary">Editar Ubicacion</button></a>
       		 	<thead>
		             <tr>
		               <th scope="col">Nombre</th>
		               <th scope="col">Email</th>
		               <th scope="col">Password</th>
		               <th scope="col">Region</th>
		               <th scope="col">Comuna</th>
		               <th scope="col">Calle</th>
		             </tr>
                </thead>
                <tbody>
	                <tr>
	                    <td>${usuarioEnSesion.nombre}</td>
	                    <td>${usuarioEnSesion.email}</td>
	                    <td id="passwordField">${usuarioEnSesion.password}</td>
	                </tr>
                </tbody>
            </table>
    	</div>
	</div>
	<script src="js/perfil.js" type="text/javascript"></script>
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