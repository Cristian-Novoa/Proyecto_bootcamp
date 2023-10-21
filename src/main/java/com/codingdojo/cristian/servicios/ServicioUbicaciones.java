package com.codingdojo.cristian.servicios;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codingdojo.cristian.modelos.Ubicacion;
import com.codingdojo.cristian.modelos.Usuario;
import com.codingdojo.cristian.repositorios.RepositorioUbicaciones;
import com.codingdojo.cristian.repositorios.RepositorioUsuarios;

@Service
public class ServicioUbicaciones {

	@Autowired
	private RepositorioUbicaciones rUbi;
	
	@Autowired
	private RepositorioUsuarios rUser;
	
	public Ubicacion encontrarUbicacion(Long id) {
		return rUbi.findById(id).orElse(null);
	}
	
	public Ubicacion guardarUbicacion(Ubicacion nuevaUbicacion) {
		return rUbi.save(nuevaUbicacion);
	}
	
	public List<Usuario> listaUsuarios(){
		return rUser.findAll();
	}
	
	public List<Ubicacion> listaUbicaciones(){
		return rUbi.findAll();
	}
	
}
