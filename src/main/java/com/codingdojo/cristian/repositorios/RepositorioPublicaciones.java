package com.codingdojo.cristian.repositorios;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.codingdojo.cristian.modelos.Publicacion;

@Repository
public interface RepositorioPublicaciones extends CrudRepository<Publicacion, Long> {

	
}
