package com.codingdojo.cristian.repositorios;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.codingdojo.cristian.modelos.Ubicacion;

@Repository
public interface RepositorioUbicaciones extends CrudRepository<Ubicacion, Long> {

	List<Ubicacion> findAll();
	
}
