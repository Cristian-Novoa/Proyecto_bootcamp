<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>US Home</title>
<link rel="stylesheet" href="/css/style.css">
<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
<link rel ="stylesheet" href="/css/homestyle.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

</head>
<body>
	<header class="header">
		<div class="menu container">
			<a href="#" class="logo"><img alt="" src="images/logo.svg"></a>
			<input type="checkbox" id="menu">

			<label for="menu">
				<img src="img/menu.svg" class="menu-icono" alt="">

			</label>
			<nav class="navbar">
				<ul>
					<li><a href="#">Inicio</a></li>
					<li><a href="#">Servicios</a></li>

					<li><a href="#">Productos</a></li>
					<li><a href="#">Contacto</a></li>
					

					<li><a href="#">Comunidad</a></li>

				</ul>
			</nav>
			<div class="socials-1">
				<p>Bienvenido ${usuarioEnSesion.nombre}</p>
				<a href="/perfil"><i class='bx bxs-user-circle bx-lg'></i></a>
			</div>
		</div>
		<div class="header-content container">
			<div class="header-txt">
				<h1>Proyecto sus</h1>
				<p>	
					loremwwef
					
				</p>
				<a href="#" class="btn-1">Informacion</a>
			</div>
			<div class="header-img">
				<img src="images/header.png" alt="">
				
			</div>
		</div>
		
	</header>
	<section class="about">
		<div class="about-content container">
			<img class="ab1" src="images/ab1.png" alt="">
			<img class="ab2" src="images/ab1.png" alt="">
			<img class="ab3" src="images/ab3.png" alt="">
			<div class="about-img">
				<img src="images/glass.png" alt="">
			</div>
			<div class="about-txt">
				<h2>Sobre nuestro producto</h2>
				<p>swfweffffffweeeeeefqwefwefwefwef</p>
				<a href="#" class="btn-2">informacion</a>
			</div>
		
		</div>
		
	</section>
	<section class="information">
		<div class="information-content container">
				<img class="in1" src="images/ab1.png" alt="">
				<img class="in2" src="images/ab1.png" alt="">
				<img class="in3" src="images/ab2.png" alt="">
				
				<h2>Informacion nutricional</h2>
				<p>qweeeeeeeeeeeeeeeeeeeeeeeq
				qwwwwwwwwwweqweqweqwwwwe</p>
		</div>
	</section>
	<main class="contact container" >
		<div class="contact-table">
			<span>Ingredientes</span>
			<h3>nutricion</h3>
			
			<table class="ingredients">
				<tr>
					<th>valor</th>
					<th>valor</th>
					<th>valor</th>
				
				</tr>
				<tr>
					<td>valor</td>
					<td>valor</td>
					<td>valor</td>
				</tr>
				<tr>
					<td>valor</td>
					<td>valor</td>
					<td>valor</td>
				</tr>
				<tr>
					<td>valor</td>
					<td>valor</td>
					<td>valor</td>
				</tr>
				<tr>
					<td>valor</td>
					<td>valor</td>
					<td>valor</td>
				</tr>
				<tr>
					<td>valor</td>
					<td>valor</td>
					<td>valor</td>
				</tr>
				<tr>
					<td>valor</td>
					<td>valor</td>
					<td>valor</td>
				</tr>
				<tr>
					<td>valor</td>
					<td>valor</td>
					<td>valor</td>
				</tr>
			</table>
		
		
		</div>
		<div class="form-content">
			<h2>suscribite a nuestras noticias</h2>
			<form>
				<input class="campo" type ="text" name="name" placeholder="Nombre">
				<input class="campo" type="email" name="email" placeholder="correo">
				<input class="btn-2" type="submit" value="enviar">
			</form>
			
		</div>
	</main>
	<footer class="footer">
		<div class="container">
			<div class="footer-links">
				<div class="link-img">
				<img src="images/logo.svg" alt="">
				<div class="socials-2">
					<a href="#"><img alt="" src="images/r1.svg"></a>
					<a href="#"><img alt="" src="images/r2.svg"></a>
					<a href="#"><img alt="" src="images/r3.svg"></a>
				</div>
				</div>
				<div class="link">
					<h3>lorem</h3>
					<ul>
						<li><a href="#">lorem</a></li>
						<li><a href="#">lorem</a></li>
						<li><a href="#">lorem</a></li>
					</ul>
				</div>
				<div class="link">
					<h3>lorem</h3>
					<ul>
						<li><a href="#">lorem</a></li>
						<li><a href="#">lorem</a></li>
						<li><a href="#">lorem</a></li>
					</ul>
				</div>
				<div class="link">
					<h3>lorem</h3>
					<ul>
						<li><a href="#">lorem</a></li>
						<li><a href="#">lorem</a></li>
						<li><a href="#">lorem</a></li>
					</ul>
				</div>
			</div>
			<div class="footer-copy">
				<p>dqowdmqwmdoqwmdmqwmdwqmwqmd</p>
				
			</div>
		</div>
	</footer>
	

</body>
</html>