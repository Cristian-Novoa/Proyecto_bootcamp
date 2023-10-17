package com.codingdojo.cristian.servicios;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codingdojo.cristian.modelos.Publicacion;
import com.codingdojo.cristian.repositorios.RepositorioPublicaciones;

@Service
public class ServicioPublicaciones {

	@Autowired
	private RepositorioPublicaciones rP;
	
	
	public Publicacion guardarPublicacion(Publicacion nuevaPublicacion) {
		
		return rP.save(nuevaPublicacion);
	}
	
	public List<Publicacion> allPublicaciones(){
		return rP.findAll();
	}
}
