package com.codingdojo.cristian.controladores;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.codingdojo.cristian.modelos.Mensaje;
import com.codingdojo.cristian.modelos.Publicacion;
import com.codingdojo.cristian.modelos.Usuario;
import com.codingdojo.cristian.servicios.ServicioMensajes;
import com.codingdojo.cristian.servicios.ServicioPublicaciones;
import com.codingdojo.cristian.servicios.ServicioUsuarios;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

@Controller
public class ControladorPublicaciones {
	
	
	@Autowired
	private ServicioUsuarios sUser;
	
	@Autowired
	private ServicioPublicaciones sP;
	
	
	@Autowired
	private ServicioMensajes sM;

	@GetMapping("/foro")
	public String foro(@ModelAttribute("nuevaPublicacion")Publicacion nuevaPublicacion,HttpSession session, Model model) {
		
		Usuario tempUsuario = (Usuario)session.getAttribute("usuarioEnSesion");
		
		if(tempUsuario == null) {
			return "redirect:/";
		}
		
		
		List<Publicacion> listaPublicaciones = sP.allPublicaciones();
		model.addAttribute("publicaciones", listaPublicaciones);
		
		return "foro.jsp";
		
	}
	
	@GetMapping("/nueva")
	public String nueva(@ModelAttribute("nuevaPublicacion")Publicacion nuevaPublicacion,HttpSession session ){
		
		Usuario tempUsuario = (Usuario)session.getAttribute("usuarioEnSesion");
		
		if(tempUsuario == null) {
			return "redirect:/";
		}
		
		
		return "nuevaPublicacion.jsp";
	}
	
	@PostMapping("/crear")
	public String crear(@Valid @ModelAttribute("nuevaPublicacion")Publicacion nuevaPublicacion, BindingResult result, HttpSession session, Model model) {
		
		Usuario tempUsuario = (Usuario)session.getAttribute("usuarioEnSesion");
		
		if(tempUsuario == null) {
			return "redirect:/";
		}
		
		if(result.hasErrors()) {
			
			Usuario miUsuario = sUser.encontrarUsuario(tempUsuario.getId());
			model.addAttribute("usuario", miUsuario);
			
			return "nuevaPublicacion.jsp";
			
		}else {
			
			sP.guardarPublicacion(nuevaPublicacion);
			
			return "redirect:/foro";
		}
}	
		
	
	@GetMapping("/postInfo/{id}")
	public String infoPost(@PathVariable("id")Long publicacion_id,@ModelAttribute("nuevoMensaje")Mensaje nuevoMensaje,HttpSession session, Model model) {
		
		Usuario tempUsuario = (Usuario)session.getAttribute("usuarioEnSesion");
		
		if(tempUsuario == null) {
			return "redirect:/";
		}
		
		List<Mensaje> listaMensajes = sM.listaMensajes();
		model.addAttribute("mensajes", listaMensajes);
		
		
		Publicacion publicacion = sP.encontrarPublicacion(publicacion_id);
		model.addAttribute("publicacion", publicacion);
		
		List<Publicacion> listaPost = sP.allPublicaciones();
		model.addAttribute("publicaciones", listaPost);
		
		return "postInfo.jsp";
	}
	
	@PostMapping("/crearmensaje")
	public String crearmensaje(@Valid @ModelAttribute("nuevoMensaje")Mensaje mensaje, BindingResult result, HttpSession session, 
			Model model) {
		
		Usuario tempUsuario = (Usuario)session.getAttribute("usuarioEnSesion");
		
		if(tempUsuario == null) {
			return "redirect:/";
		}
		
		if(result.hasErrors()) {
			model.addAttribute("publicacion", mensaje.getPublicacion());
			return "postInfo.jsp";
		}else {
			
			sM.guardarMensaje(mensaje);
			return "redirect:/postInfo/"+mensaje.getPublicacion().getId();
		}
		
	}

}
