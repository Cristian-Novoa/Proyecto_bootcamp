package com.codingdojo.cristian.controladores;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.codingdojo.cristian.modelos.Publicacion;
import com.codingdojo.cristian.modelos.Usuario;

import jakarta.servlet.http.HttpSession;

@Controller
public class ControladorPublicaciones {

	@GetMapping("/foro")
	public String foro(@ModelAttribute("nuevaPublicacion")Publicacion nuevaPublicacion,HttpSession session ) {
		
		Usuario tempUsuario = (Usuario)session.getAttribute("usuarioEnSesion");
		
		if(tempUsuario == null) {
			return "redirect:/";
		}
		
		return "foro.jsp";
		
	}
	
	
}
