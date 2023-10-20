<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>US Home</title>
<link rel="stylesheet" href="/css/homestyle.css">
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
    <section class="middle-content">
    	<div class="slider-box">
    		<ul>
    			<li>
    				<img src="img/s1.jpg">
    				<div class="texto">
    					<h2>img1efefe</h2>
    					<p> insert parrafofeefefefefefef</p>
    				</div>
    			</li>
    			<li>
    				<img src="img/s2.jpg">
    				<div class="texto">
    					<h2>img2</h2>
    					<p> insert parrafo</p>
    				</div>
    			</li>
    			<li>
    				<img src="img/s3.jpg">
    				<div class="texto">
    					<h2>img2</h2>
    					<p> insert parrafo</p>
    				</div>
    			</li>
    			<li>
    				<img src="img/s4.jpg">
    				<div class="texto">
    					<h2>img2</h2>
    					<p> insert parrafo</p>
    				</div>
    			</li>
    		</ul>
    	</div>
    </section>
    <section class="sub-content">
    	<div class="about-us">
    		<h2>Nuestro propósito para ustedes</h2>
    		<div class="about-us-2">
    			<img alt= "icono" src="img/icon_home.png">
    			<div class="about-us-muro">
    			<p>Nuestra misión es unir comunidades, promover seguridad y comunicación, fortalecer la colaboración vecinal
    		    	y prevenir la delincuencia. Somos más que una empresa de seguridad; somos una comunidad comprometida con 
    		    	la tranquilidad de tu vecindario.</p> 
    			<p>Te invitamos a entrar a nuestro muro de comentarios para mantener informado a tus vecinos.</p>
    			<a href="/foro">Comunidad</a>
    			</div>
    		</div>
    	</div>
    	<div class="bio-bio-1">
    		<h2>Conoce mas sobre tu región</h2>
    		<div class="bio-bio-2">
    			<p>La Octava Región de Chile es la Región del Biobío, que se divide en las provincias de Ñuble, Bío Bío, Concepción y Arauco.
    			   Su capital es Concepción, que es una de las ciudades más importantes de Chile, gracias a su rica herencia en cultura, 
    			   con influencias indígenas, españolas y europeas. La artesanía , la gastronomía y La música folklórica junto
    			   a la grandes bandas que se formaron en Concepcion entregan una basta variedad de interes por la Región.<p>
    			<img alt= "icono" src="img/8° región.png">
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