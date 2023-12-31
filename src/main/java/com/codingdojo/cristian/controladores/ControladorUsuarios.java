package com.codingdojo.cristian.controladores;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.codingdojo.cristian.modelos.Ubicacion;
import com.codingdojo.cristian.modelos.Usuario;
import com.codingdojo.cristian.servicios.ServicioUbicaciones;
import com.codingdojo.cristian.servicios.ServicioUsuarios;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

@Controller
public class ControladorUsuarios {

	@Autowired
	private ServicioUsuarios servicio;
	
	@Autowired
	private ServicioUbicaciones sUbi;
	
	@GetMapping("/")
	public String index(@ModelAttribute("nuevoUsuario")Usuario nuevoUsuario) {
		
		return "index.jsp";
	}
	
	@GetMapping("/dashboard")
	public String dashboard(HttpSession session, Model model) {
		//Revisamos que el usuario haya iniciado sesion
		
		Usuario tempUsuario = (Usuario)session.getAttribute("usuarioEnSesion");
		
		if(tempUsuario == null) {
			return "redirect:/";
		}
		
		List<Ubicacion> listaUbicaciones = sUbi.listaUbicaciones();
		model.addAttribute("ubicaciones", listaUbicaciones);
		
		return "dashboard.jsp";
	}
	
	@GetMapping("/registro")
	public String registro(@ModelAttribute("nuevoUsuario")Usuario nuevoUsuario) {
		
		
		
		
		return "registro.jsp";
	}
	
	@PostMapping("/registro")
	public String registro(@Valid @ModelAttribute("nuevoUsuario")Usuario nuevoUsuario, BindingResult result, HttpSession session) {
		
		servicio.registrar(nuevoUsuario, result);
		if(result.hasErrors()) {
			
			return "registro.jsp";
		}else {
			//Guardar un usuario en la sesion 
			session.setAttribute("usuarioEnSesion", nuevoUsuario);
			return "redirect:/dashboard";
		}
	}
	
	@PostMapping("/login")
	public String login(@RequestParam("email")String email, @RequestParam("password")String password, RedirectAttributes redirectAttributes,
			HttpSession session) {
		
		Usuario usuarioInicioSesion = servicio.login(email, password); //Sera null si los datos son incorrectos o sera un objeto si todo esta bien
		
		if(usuarioInicioSesion == null) {
			redirectAttributes.addFlashAttribute("error_login", "El correo y/o contraseña es incorrecto");
			return "redirect:/";
		}else {
			session.setAttribute("usuarioEnSesion", usuarioInicioSesion);
			return "redirect:/dashboard";
		}
	}
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.removeAttribute("usuarioEnSesion");
		return "redirect:/";
	}
	
	
}
	
	
	
	

