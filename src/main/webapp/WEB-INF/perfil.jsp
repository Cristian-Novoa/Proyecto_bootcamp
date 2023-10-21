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
    <section class="boxuser">
    	<div class = "perfil-top">
    		<i class='bx bxs-id-card bx-lg'></i>
   			<h2>Perfil de Usuario</h2>
    	</div>
		<div class="container text-center">
    		<div class="center-content">
        		<img src="/img/usuario.png" alt="Imagen de perfil">
    		</div>
    		<div class = "information">
    			<h2>Informacion</h2>
    			<div class = "user-information">
    				<p>Nombre de usuario</p>
    				<p>${usuarioEnSesion.nombre}</p>
    			</div>
    			<div class = "user-information">
    				<p>Correo electronico</p>
    				<p>${usuarioEnSesion.email}</p>
    			</div>
    			<div class = "user-information">
    				<p>Region</p>
    				<p>
    					<c:forEach items = "${ubicaciones}" var = "ubicacion">
    						<c:if test = "${ubicacion.usuario.id == usuarioEnSesion.id}">
    							${ubicacion.region}
    						</c:if>
    					</c:forEach>
    				</p>
    			</div>
    			<div class = "user-information">
    				<p>Comuna</p>
    				<p>
    					<c:forEach items = "${ubicaciones}" var = "ubicacion">
    						<c:if test = "${ubicacion.usuario.id == usuarioEnSesion.id}">
    							${ubicacion.comuna}
    						</c:if>
    					</c:forEach>
    				</p>
    			</div>
    			<div class = "user-information">
    				<p>Calle</p>
    				<p>
    					<c:forEach items = "${ubicaciones}" var = "ubicacion">
    						<c:if test = "${ubicacion.usuario.id == usuarioEnSesion.id}">
    							${ubicacion.calle}
    						</c:if>
    					</c:forEach>
    				</p>
    			</div>
    			<div class = "user-btn">
    				<a href = "/ubicacion" class = "btn btn-info">Agregar Ubicacion</a>
    			</div>
    		</div>
		</div>
	</section>
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