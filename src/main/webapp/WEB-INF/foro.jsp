<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
        <div class = "comuna-user">
        	<div class = "icon-ubi">
        		<i class='bx bx-map-pin bx-sm'></i>
        	</div>
        	<div class = "content-ubi">
        		<p>
    			<c:forEach items = "${ubicaciones}" var = "ubicacion">
    				<c:if test = "${ubicacion.usuario.id == usuarioEnSesion.id}">
    					${ubicacion.comuna} <span>${ubicacion.calle}</span>
    				</c:if>
    			</c:forEach>
    		</p>
        	</div>
        </div>
        <nav class="navbarra">
            <a href="/dashboard">Inicio</a>
            <a href="">Comunidad</a>
            <a href="/perfil">Mi Perfil</a>
        </nav>
        <div class = "btn-logout">
        	<a href="/logout" class = "btn btn-danger">Cerrar sesion</a>
        </div>
    </header>
    <div class = "midle-content">
    	<div class = "midle-title">
    		<h2>Publicaciones</h2>
    	</div>
    	<div class = "btn-publicacion">
    		<a href = "/nueva">Crea tu publicacion</a>
    	</div>
    </div>
    <div class = "box-main">
    	<c:forEach items = "${publicaciones}" var = "publicacion">
    	<div class = "boxuser">
    		<div class = "user-left">
    			<i class='bx bx-md bxs-user-circle'></i>
    			<p>${publicacion.creadorPublicacion.nombre}</p>
    		</div>
    		<div class = "user-midle">
    			<h2><a href = "/postInfo/${publicacion.id}">${publicacion.titulo}</a></h2>
    			<p>${publicacion.descripcion}</p>
    		</div>
    		<div class = "seccion-comment">
    			<div class = "comments">
    				<i class='bx bxs-message-dots'></i>
    				${publicacion.mensajesPublicacion.size()}
    			</div>
    			<div class = "date">
    				<p><fmt:parseDate pattern = "yyyy-MM-dd" value = "${publicacion.createdAt}" var = "fechaFormateada"/>
    					<fmt:formatDate value = "${fechaFormateada}" pattern = "EEEE, dd-MM, yyyy"/>
    				</p>
    			</div>
    		</div>
    	</div>
    </c:forEach>
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