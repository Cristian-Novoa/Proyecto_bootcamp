<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
            <a href="/foro">Comunidad</a>
            <a href="/perfil">Mi Perfil</a>
        </nav>
        <div class = "btn-logout">
        	<a href="/logout" class = "btn btn-danger">Cerrar sesion</a>
        </div>
    </header>
    <main class = "main">
    	<div class = "title">
    		<h2>${publicacion.titulo}</h2>
    	</div>
    	<div class = "content">
    		<div class = "row">
    			<div class = "left-col col-6">
    				<div class = "description-post">
    					<div class = "icon-user">
    						<i class='bx bx-md bxs-user-circle'></i>
    					</div>
    					<div class = "autor-name">
    						${publicacion.creadorPublicacion.nombre}
    						<div class = "autor-description">
    							<p>${publicacion.descripcion}</p>
    						</div>
    					</div>
    				</div>
    				<div class = "comment-title border-top border-3 border-dark"><h2>Comentarios</h2></div>
    				<div class = "box-comment">
    					<c:forEach items = "${publicacion.mensajesPublicacion}" var = "msg">
    						<div class = "msg-user border-bottom border-1 border-dark">
    							<div class = "icon-user">
    								<i class='bx bx-md bxs-user-circle'></i>
    							</div>
    							<div class = "autor-name">
    								${msg.autor.nombre}
    								<div class = "autor-comment">
    									<p>
    										${msg.contenido} 
    									</p>
    								</div>
    							</div>
    						</div>
    					</c:forEach>
    				</div>
    			</div>
    			<div class = "right-col col-6">
    				<div class = "comment">
    					<div class = "comments">
    						<h2>Puedes publicar un comentario aqui</h2>
    						<form:form action = "/crearmensaje" method = "POST" modelAttribute = "nuevoMensaje">
    							<div>
    								<form:label path = "contenido">Ingresa un comentario</form:label>
    								<form:textarea path = "contenido" class = "form-control"/>
    								<form:errors path = "contenido" class = "text-light-emphasis"/>
    							</div>
    							<form:hidden path = "autor" value = "${usuarioEnSesion.id}"/>
								<form:hidden path = "publicacion" value = "${publicacion.id}"/>
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