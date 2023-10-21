package com.codingdojo.cristian.repositorios;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.codingdojo.cristian.modelos.Mensaje;

@Repository
public interface RepositorioMensajes extends CrudRepository<Mensaje, Long> {

	List<Mensaje> findAll();
}
