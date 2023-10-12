package com.codingdojo.cristian.servicios;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codingdojo.cristian.repositorios.RepositorioPublicaciones;

@Service
public class ServicioPublicaciones {

	@Autowired
	private RepositorioPublicaciones rP;
	
	
}
