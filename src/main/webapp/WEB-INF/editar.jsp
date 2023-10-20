<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="/css/editar.css">
<title>Editar Perfil</title>
</head>
<body>
	<div class="container">
		<div class="center-content">
        	<img src="/img/usuario.png" alt="Imagen de perfil">
    	</div>
    	<div class="ubi-content">
			<h1>Editar Ubicacion</h1>
			<form:form action="/actualizar" method="post" modelAttribute="nuevaDireccion">
			<div>
				<form:label path="region">Region</form:label>
				<form:input path="region" class="form-control" />
				<form:errors path="region" class="text-danger" />
			</div>
			<div>
				<form:label path="comuna">Comuna</form:label>
				<form:input path="comuna" class="form-control" />
				<form:errors path="comuna" class="text-danger" />
			</div>
			<div>
				<form:label path="calle">Calle</form:label>
				<form:input path="calle" class="form-control" />
				<form:errors path="calle" class="text-danger" />
			</div>
			<form:hidden path="id" value="${usuarioEnSesion.id}"/>
			
			<input type="hidden" value="put" name="_method" />
			
			<input type="submit" class="btn btn-success mt-3" value="Guardar" />
			</form:form>
		</div>
		<div class="form-region">
			<div class="another-location another-location--not-logged">
				<h2 class="header-subtitle"></h2>
				<div class="andes-card andes-card--flat andes-card--default secondary-card secondary-card-embed andes-card--padding-default">
					<div class="state-city">
						<div class="state-city__dropdown">
							<div class="andes-widther">
								<label class="andes-dropdown andes-width--100 andes-form-control andes-dropdown--form-native andes-dropdown--default">
									<span class="andes-form-control__label">Región</span>
									<div class="andes-dropdown__field">
										<select class="andes-form-control__field" type="form" name="state_id" width="100" menumaxheight="300" autofocus="" id="stateDropdown">
										<option primary="Elija una opción" value="0">Elija una opción</option>
										<option primary="Aysén" value="CL-AI">Aysén</option>
										<option primary="Antofagasta" value="CL-AN">Antofagasta</option>
										<option primary="Arica y Parinacota" value="CL-AP">Arica y Parinacota</option>
										<option primary="Atacama" value="CL-AT">Atacama</option>
										<option primary="Biobío" value="CL-BI">Biobío</option>
										<option primary="Coquimbo" value="CL-CO">Coquimbo</option>
										<option primary="La Araucanía" value="CL-AR">La Araucanía</option>
										<option primary="Libertador B. O'Higgins" value="CL-LI">Libertador B. O'Higgins</option>
										<option primary="Los Lagos" value="CL-LL">Los Lagos</option>
										<option primary="Los Ríos" value="CL-LR">Los Ríos</option>
										<option primary="Magallanes" value="CL-MA">Magallanes</option>
										<option primary="Maule" value="CL-ML">Maule</option>
										<option primary="RM (Metropolitana)" value="CL-RM">RM (Metropolitana)</option>
										<option primary="Tarapacá" value="CL-TA">Tarapacá</option>
										<option primary="Valparaíso" value="CL-VS">Valparaíso</option>
										<option primary="Ñuble" value="CL-NB">Ñuble</option>
										</select>
										<div class="andes-form-control__border"></div>
										<div class="andes-dropdown__arrow-container">
											<svg width="20" height="20" viewBox="0 0 20 20" fill="rgba(0, 0, 0, 0.9)">
												<path d="M5.2018 6.75609L9.99743 11.5517L14.7981 6.7511L15.6466 7.59963L9.99743 13.2488L4.35327 7.60462L5.2018 6.75609Z" fill="rgba(0, 0, 0, 0.9)"></path>
											</svg>
										</div>
									</div>
									<span class="andes-form-control__message"> </span>
								</label>
							</div>
						</div>
						<div class="state-city__dropdown">
							<div class="andes-widther">
								<label class="andes-dropdown andes-width--100 andes-form-control andes-dropdown--form-native andes-dropdown--default andes-form-control--disabled">
									<span class="andes-form-control__label">Comuna</span>
									<div class="andes-dropdown__field">
										<select class="andes-form-control__field" disabled="" type="form" name="city_id" width="100" menumaxheight="300" id="citiesDropdown">
											<option primary="Elija una opción" value="0">Elija una opción</option>
										</select>
										<div class="andes-form-control__border"></div>
										<div class="andes-dropdown__arrow-container">
											<svg width="20" height="20" viewBox="0 0 20 20" fill="rgba(0, 0, 0, 0.9)">
												<path d="M5.2018 6.75609L9.99743 11.5517L14.7981 6.7511L15.6466 7.59963L9.99743 13.2488L4.35327 7.60462L5.2018 6.75609Z" fill="rgba(0, 0, 0, 0.9)"></path>
											</svg>
										</div>
									</div>
									<span class="andes-form-control__message"> </span>
								</label>
							</div>
						</div>
						<button type="submit" class="andes-button state-city__use-button andes-button--large andes-button--quiet andes-button--disabled" disabled="" data-testid="submit-button">
							<span class="andes-button__content">Aceptar</span>
						</button>
					</div>
				</div>
			</div>
		</div>
    </div>
</body>
</html>