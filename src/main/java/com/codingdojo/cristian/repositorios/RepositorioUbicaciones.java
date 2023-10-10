package com.codingdojo.cristian.repositorios;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.codingdojo.cristian.modelos.Ubicacion;

@Repository
public interface RepositorioUbicaciones extends CrudRepository<Ubicacion, Long> {

	
}
