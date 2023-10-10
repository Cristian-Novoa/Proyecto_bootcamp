package com.codingdojo.cristian.controladores;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.codingdojo.cristian.modelos.Ubicacion;
import com.codingdojo.cristian.modelos.Usuario;
import com.codingdojo.cristian.servicios.ServicioUbicaciones;
import com.codingdojo.cristian.servicios.ServicioUsuarios;

import jakarta.servlet.http.HttpSession;

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
		
		return "perfil.jsp";
	}
}
