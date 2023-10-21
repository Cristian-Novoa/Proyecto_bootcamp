package com.codingdojo.cristian.servicios;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codingdojo.cristian.modelos.Mensaje;
import com.codingdojo.cristian.modelos.Usuario;
import com.codingdojo.cristian.repositorios.RepositorioMensajes;
import com.codingdojo.cristian.repositorios.RepositorioUsuarios;

@Service
public class ServicioMensajes {

	@Autowired
	private RepositorioMensajes rM;
	
	@Autowired
	private RepositorioUsuarios rUser;
	
	
	public Mensaje encontrarMensaje(Long id) {
		return rM.findById(id).orElse(null);
	}
	
	public Mensaje guardarMensaje(Mensaje nuevoMensaje) {
		return rM.save(nuevoMensaje);
	}
	
	public Usuario encontrarUsuario(Long id) {
		return rUser.findById(id).orElse(null);
	}
	
	
	public void borrarMensaje(Long id) {
		rM.deleteById(id);
	}
	
	public List<Mensaje> listaMensajes(){
		return rM.findAll();
	}
	
	
}
