package com.codingdojo.cristian.servicios;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import com.codingdojo.cristian.modelos.Usuario;
import com.codingdojo.cristian.repositorios.RepositorioUsuarios;

@Service
public class ServicioUsuarios {

	@Autowired
	private RepositorioUsuarios repoUser;
	
	//Metodo que registre un nuevo usuario
	public Usuario registrar(Usuario nuevoUsuario, BindingResult result) {
		
		//Comparamos contraseñas
		String contrasena = nuevoUsuario.getPassword();
		String confirmacion = nuevoUsuario.getConfirmacion();
		
		if(!contrasena.equals(confirmacion)) {
			result.rejectValue("confirmacion", "Matches", "Las contraseñas no coinciden");
		}
		
		//Revisamos que el correo que recibimos no exista en mi base de datos
		
		String email = nuevoUsuario.getEmail();
		Usuario existeUsuario = repoUser.findByEmail(email);
		
		if(existeUsuario != null) {
			//El correo esta creado
			result.rejectValue("email", "Unique", "El correo ingresado ya se encuentra registrado");
		}
		
		//Si existe error, entonces regresamos null
		if(result.hasErrors()) {
			return null;
		}else {
			//Si no hay error guardamos
			//Encriptamos la contraseña
			String contra_encriptada = BCrypt.hashpw(contrasena, BCrypt.gensalt());
			nuevoUsuario.setPassword(contra_encriptada);
			return repoUser.save(nuevoUsuario);
		}
	}
	//Revisar si el usuario existe y las contraseñas coinciden
	public Usuario login(String email, String password) {
		//Revisamos que el correo este en la base de datos 
		Usuario usuarioInicioSesion = repoUser.findByEmail(email); //Objeto Usuario o null
		if(usuarioInicioSesion == null) {
			return null;
		}
		//Comparamos contraseñas 
		if(BCrypt.checkpw(password, usuarioInicioSesion.getPassword())) {
			return usuarioInicioSesion;
		}else {
			return null;
		}
		
	}
	
	public Usuario guardarUsuario(Usuario nuevoUsuario) {
		return repoUser.save(nuevoUsuario);
	}
	
	public Usuario encontrarUsuario(Long id) {
		return repoUser.findById(id).orElse(null);
	}
}
