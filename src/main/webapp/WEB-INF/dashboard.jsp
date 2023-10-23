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
    <div>
    <h1>Tu seguridad esta con nosotros </h1>
    </div>
    <section class="middle-content">
    	<div class="slider-box">
    		<ul>
    			<li>
    				<img src="img/s1.png">
    				<div class="texto">
    					<h2></h2>
    					<p> </p>
    				</div>
    			</li>
    			<li>
    				<img src="img/s2.png">
    				<div class="texto">
    					<h2></h2>
    					<p> </p>
    				</div>
    			</li>
    			<li>
    				<img src="img/s3.png">
    				<div class="texto">
    					<h2></h2>
    					<p> </p>
    				</div>
    			</li>
    			<li>
    				<img src="img/s4.png">
    				<div class="texto">
    					<h2></h2>
    					<p> </p>
    				</div>
    			</li>
    		</ul>
    	</div>
    </section>
    <section>
        <div class="container">
            <div class="row">
                <div class="col-12 mb-5">
                    <hr>
                </div>
                <div class="col-12 col-lg-6">
                    <h3>Que hacemos</h3>
                </div>
                <div class="col-12 col-lg-6">
                    <p>Apoyamos a las empresas en la creación de productos y servicios digitales innovadores centrados en el cliente, a través de un trabajo interdisciplinario que combina la estrategia, la creatividad, los datos y el diseño.</p>
                    <a href="#form-contact" class="btn btn-yellow">Contáctanos</a>
                </div>
            </div>
            <div class="row mt-5 d-none">
                <div class="col-12 mt-5">
                    <h4><span>La evolución de tu compañía necesita una consultoría diferente.</span> En BBK+2Brains ofrecemos un modelo multidisciplinario de capacidades en un único aliado.</h4>
                </div>
            </div>
        </div>
    </section>
    <section class="topcontent">
    <div >
        <div >
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="row sy-hidde">
                            <div class="col-12">
                                <hr>
                            </div>
                            <div class="col-12 col-md-7">
                                <div data-aos="fade-up" class="principal_text aos-init">
                                    <h3>No hacemos consultoría tradicional.</h3>
                                </div>
                            </div>
                        </div>
                        <div class="row justify-content-between mt-5">
                            <div class="col-12 col-md-5">
                                <div data-aos="fade-up" class="principal_text aos-init">
                                    <p>Somos una consultora estratégica que ayuda a líderes de
                                        industria a acelerar y construir hoy su mañana, gracias
                                        a nuestra capacidad integrada de tecnología, diseño y
                                        visión de negocio. Generamos saltos de valor concretos
                                        con soluciones end to end de alto impacto, medibles y
                                        siempre conectados con las necesidades profundas del
                                        usuario.</p>
                                    <a href="#form-contact" class="btn btn-yellow">Contáctanos</a>
                                </div>
                            </div>
                            <div class="col-12 col-md-5 bg-offset">
                                <img src="https://www.bbk2brains.com/hubfs/home-2023/photo-1.jpg" alt="">
                            </div>
                        </div>
                        <br>
                        <br>
                        <!-- Contadores -->
                        <div class="row mt-5 mt-lg-0 pt-5 pt-lg-0" id="counters_1" style="position: relative; z-index: 20;">
                            <div class="col-6 col-lg-3 aos-init" data-aos="fade-down">
                                <div class="flex-number">
                                    <div>
                                        <img src="img/shield-plus-solid-24.png">
                                    </div>
                                    <div>
                                        <span class="counter c_0" data-targetnum="360" data-speed="2000">360</span>
                                    </div>
                                </div>
                                <div class="text-counter">
                                    <b>Personas</b>
                                    <p>
                                        talento con enfoque en tecnología, diseño y estrategia.
                                    </p>
                                </div>
                            </div>
    
                            <div class="col-6 col-lg-3 aos-init" data-aos="fade-down" data-aos-delay="100">
                                <div class="flex-number">
                                    <div>
                                        <img src="img/shield-plus-solid-24.png">
                                    </div>
                                    <div>
                                        <span class="counter c_1" data-targetnum="13" data-speed="2000">13</span>
                                    </div>
                                </div>
                                <div class="text-counter">
                                    <b>Años</b>
                                    <p>ayudando a las compañías&nbsp;a construir su futuro.</p>
                                </div>
                            </div>
    
                            <div class="col-6 col-lg-3 aos-init" data-aos="fade-down" data-aos-delay="200">
                                <div class="flex-number">
                                    <div>
                                        <img src="img/shield-plus-solid-24.png">
                                    </div>
                                    <div>
                                        <span class="counter c_2" data-targetnum="100" data-speed="2000">100</span>
                                    </div>
                                </div>
                                <div class="text-counter">
                                    <b>Clientes</b>
                                    <p>en una gran variedad de industrias</p>
                                </div>
                            </div>
    
                            <div class="col-6 col-lg-3 aos-init" data-aos="fade-down" data-aos-delay="300">
                                <div class="flex-number">
                                    <div>
                                        <img src="img/shield-plus-solid-24.png">
                                    </div>
                                    <div>
                                        <span class="counter c_3" data-targetnum="1000" data-speed="2000">1000</span>
                                    </div>
                                </div>
                                <div class="text-counter">
                                    <b>Proyectos</b>
                                    <p>desde el sueño, al código</p>
                                </div>
                            </div>  
                        </div>                     
                    </div>
                </div>
            </div>
        </div>
    </div>
    </section>
   
    <section class="cardco">
    	<div class="cardco1">
    	<div class="card">
    		<figure>
    			<img src="img/s4.png">
    		</figure>
    		<div class="contenido">
    			<h3>Contabilidad</h3>
    			<p>La Octava Region de Chile es la Region del Biobio, que se divide en las provincias de ñuble, Bio Bio, Concepcion y Arauco.
    			   Su capital es Concepcion, que es una de las ciudades mas importantes de Chile, gracias a su rica herencia en cultura, 
    			   con influencias indigenas</p>
    			   <a href="#">ver mas</a>
    		</div>
    	</div>
    	<div class="card">
    		<figure>
    			<img src="img/s4.png">
    		</figure>
    		<div class="contenido">
    			<h3>Contabilidad</h3>
    			<p>La Octava Region de Chile es la Region del Biobio, que se divide en las provincias de ñuble, Bio Bio, Concepcion y Arauco.
    			   Su capital es Concepcion, que es una de las ciudades mas importantes de Chile, gracias a su rica herencia en cultura, 
    			   con influencias indigenas</p>
    			   <a href="#">ver mas</a>
    		</div>
    	</div>
    	<div class="card">
    		<figure>
    			<img src="img/s4.png">
    		</figure>
    		<div class="contenido">
    			<h3>Contabilidad</h3>
    			<p>La Octava Region de Chile es la Region del Biobio, que se divide en las provincias de ñuble, Bio Bio, Concepcion y Arauco.
    			   Su capital es Concepcion, que es una de las ciudades mas importantes de Chile, gracias a su rica herencia en cultura, 
    			   con influencias indigenas</p>
    			   <a href="#">ver mas</a>
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