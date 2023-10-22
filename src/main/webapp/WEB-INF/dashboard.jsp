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
    					<h2></h2>
    					<p> </p>
    				</div>
    			</li>
    			<li>
    				<img src="img/s2.jpg">
    				<div class="texto">
    					<h2></h2>
    					<p> </p>
    				</div>
    			</li>
    			<li>
    				<img src="img/s3.jpg">
    				<div class="texto">
    					<h2></h2>
    					<p> </p>
    				</div>
    			</li>
    			<li>
    				<img src="img/s4.jpg">
    				<div class="texto">
    					<h2></h2>
    					<p> </p>
    				</div>
    			</li>
    		</ul>
    	</div>
    </section>
    <div class="middle-content-2">
    	<div class="about-us">
    		<h2>Nuestro proposito para ustedes</h2>
    		<div class="about-us-2">
    			<img alt="icono" src="img/icon_home.png">
    			<div class="about-us-muro">
    				<p>Nuestra mision es unir comunidades, promover seguridad y comunicacion, 						fortalecer la colaboracion vecinal y prevenir la delincuecia. Somos mas 						que una empresa de seguirdad; somos una comnudidad comprometida con la 						tranquiladad de tu vecindario.</p>
    				<p>Te invitamos a entrar a nuestro muro de comnetarios para mantener 						informado a tus vecinos.</p>
    				<a href="/foro">Comunidad</a>
    			</div>
    		</div>
    	</div>
    </div>
    <section>
        <div class="container">
        </div>
            <div class="row mt-5 d-none">
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
                                    <h3>No hacemos consultoria tradicional.</h3>
                                </div>
                            </div>
                        </div>
                        <div class="row justify-content-between mt-5">
                            <div class="col-12 col-md-5">
                                <div data-aos="fade-up" class="principal_text aos-init">
                                    <p>Somos una consultora estrategica que ayuda a lideres de
                                        industria a acelerar y construir hoy su mañana, gracias
                                        a nuestra capacidad integrada de tecnologia, diseno y
                                        vision de negocio. Generamos saltos de valor concretos
                                        con soluciones end to end de alto impacto, medibles y
                                        siempre conectados con las necesidades profundas del
                                        usuario.</p>
                                </div>
                            </div>
                            <div class="col-12 col-md-5 bg-offset">
                                <img src="https://www.bbk2brains.com/hubfs/home-2023/photo-1.jpg" alt="">
                            </div>
                        </div>
                  </div>
                         
                </div>  
            </div>                     
        </div>
    </div>
    </section>
    <div class="num-emergency">
    	<h2>Numeros de emergencia</h2>
    </div>
   		<div class="contact-emergency">
            <div class="ambulancia">
         		<div class="img-contact">
                   	<img src="icon_home.png">
                </div>
                <h3>Ambulancia</h3>
                <h3>131</h3>
             </div>
             <div class="bomberos">
                 <div class="img-contact">
                    <img src="">
                 </div>
                 <h3>Bomberos</h3>
                 <h3>132</h3>
             </div>
             <div class="carabineros">
                 <div class="img-contact">
                     <img src="">
                 </div>
                 <h3>Carabineros</h3>
                 <h3>133</h3>
             </div>
        </div>
    <section class="cardco">
    	<div class="cardco1">
    	<div class="card">
    		<figure>
    			<img src="img/8° región.png">
    		</figure>
    		<div class="contenido">
    			<h3>Ubicacion</h3>
    			<p>La Octava Region se encuentra en la zona centro-sur de Chile, limitando al norte con la Region del Maule, al sur con la Region de La Araucania, al este con la Region de Nuble y al oeste con el oceano Pacifico. La capital de la Region del Biobío es la ciudad de Concepcion, que es la segunda ciudad mas grande de Chile y un importante centro industrial y comercial.</p>
    			   <a href="#">ver mas</a>
    		</div>
    	</div>
    	<div class="card">
    		<figure>
    			<img src="img/puente.jpg">
    		</figure>
    		<div class="contenido">
    			<h3>Cultura</h3>
    			<p>La Octava Region tiene una rica tradición cultural, con influencias indigenas y espanolas. La musica y la danza folclorica son parte integral de la cultura local. La region ofrece una gran variedad de destinos turisticos, incluyendo playas, parques nacionales, rios y lagos. Algunos lugares destacados son el Parque Nacional Nahuelbuta, la ciudad costera de Tome, y las termas de Chillan.</p>
    			   <a href="#">ver mas</a>
    		</div>
    	</div>
    	<div class="card">
    		<figure>
    			<img src="img/plaza.jpg">
    		</figure>
    		<div class="contenido">
    			<h3>Historia</h3>
    			<p> La Octava Region tiene una rica historia, que incluye la presencia de pueblos indigenas como los mapuches. Durante la colonización española, la región fue escenario de conflictos y expediciones. Mas recientemente, la region ha tenido un papel importante en la historia de Chile, incluyendo la independencia del pais y el terremoto de 2010.</p>
    			   <a href="#">ver mas</a>
    		</div>
    	</div>
      </div>
    </section>
    <section class="cardco">
        <div class="cardco1">
        <div class="card">
            <figure>
                <img src="img/icon_home.png">
            </figure>
            <div class="contenido">
                <h3>Ofrecemos</h3>
                <p>Unión Comunitaria: Fomentamos la colaboración y la interacción entre los..<br>Recursos de Seguridad: Proporcionamos herramientas y asesoramiento que te... <br>Iniciativas Comunitarias: Organizamos proyectos y eventos que promueven un.... <br></p>
                   <a href="#">ver mas</a>
            </div>
        </div>
        <div class="card">
            <figure>
                <img src="img/seguridad.jpeg">
            </figure>
            <div class="contenido">
                <h3>Capacitaciones</h3>
                <p>Inscribete a nuestra formación especializada en seguridad para que estés mejor preparado ante situaciones de riesgo. <br> Tales como: <br>Prevención de Robos y Asaltos - Primeros Auxilios y RCP - Seguridad Cibernética...
                </p>
                   <a href="#">ver mas</a>
            </div>
        </div>
        <div class="card">
            <figure>
                <img src="img/unidos.png">
            </figure>
            <div class="contenido">
                <h3>Unete a nosotros</h3>
                <p>Si deseas vivir en un entorno más seguro y sentirte respaldado por tu comunidad, Us es la respuesta. Únete a nosotros y descubre cómo podemos transformar tu vecindario en un lugar donde la seguridad y la unión son una realidad. ¡Contáctanos hoy y déjanos ayudarte a construir un futuro más seguro para ti y tus vecinos!</p>
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
    			<p>Nuestra misión es unir comunidades, promover seguridad y comunicación, fortalecer la colaboración vecinal y prevenir la delincuencia.</p>
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