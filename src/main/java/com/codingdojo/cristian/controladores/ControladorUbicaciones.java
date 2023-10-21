package com.codingdojo.cristian.controladores;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;

import com.codingdojo.cristian.modelos.Comuna;

import com.codingdojo.cristian.modelos.Region;

import com.codingdojo.cristian.modelos.Ubicacion;
import com.codingdojo.cristian.modelos.Usuario;
import com.codingdojo.cristian.servicios.ServicioUbicaciones;
import com.codingdojo.cristian.servicios.ServicioUsuarios;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

@Controller
public class ControladorUbicaciones {

	@Autowired
	private ServicioUbicaciones sUbi;
	
	@Autowired
	private ServicioUsuarios servicio;
	
	
	@GetMapping("/perfil")
	public String perfil(@ModelAttribute("nuevaDireccion")Ubicacion nuevaDireccion, Model model, HttpSession session) {
		
		Usuario tempUsuario = (Usuario)session.getAttribute("usuarioEnSesion");
		
		if(tempUsuario == null) {
			return "redirect:/";
		}
		model.addAttribute("comunas",Comuna.comunas);
		return "perfil.jsp";
	}
	
	
	@GetMapping("/ubicacion")
	public String ubicacion(@ModelAttribute("nuevaUbicacion")Ubicacion nuevaUbicacion, Model model, HttpSession session) {
		
		Usuario tempUsuario = (Usuario)session.getAttribute("usuarioEnSesion");
		
		if(tempUsuario == null) {
			return "redirect:/";
		}
		
		model.addAttribute("regiones", Region.region);
		model.addAttribute("comunas", Comuna.comunas);
		
		return "ubicacion.jsp";
		
	}
	
	@GetMapping("/editar/{id}")
	public String editar(@PathVariable("id") Long id,
						 @ModelAttribute("nuevaDireccion")Ubicacion nuevaDireccion,
						 HttpSession session,
						 Model model) {
		//Revisamos que el usuario haya iniciado sesion
		
		Usuario tempUsuario = (Usuario)session.getAttribute("usuarioEnSesion");
		
		if(tempUsuario == null) {
			return "redirect:/";
	}
	
		Usuario usuarioAEditar = servicio.encontrarUsuario(id);
		
		model.addAttribute(usuarioAEditar);
		return "editar.jsp";
	}
	
	@PutMapping("/actualizar")
	public String update(HttpSession session,
						 @Valid @ModelAttribute("nuevaDireccion")Ubicacion nuevaDireccion,Model model,
						 BindingResult result) {
		
		
				Usuario tempUsuario = (Usuario)session.getAttribute("usuarioEnSesion");
				model.addAttribute("comunas",Comuna.comunas);
				if(tempUsuario == null) {
					return "redirect:/";
			}
		if(result.hasErrors()) {
			return "editar.jsp";
		} else {
			
			return "redirect:/perfil";
		}
	}
}
