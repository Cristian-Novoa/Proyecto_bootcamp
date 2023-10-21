package com.codingdojo.cristian.modelos;

import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToMany;
import jakarta.persistence.OneToOne;
import jakarta.persistence.PrePersist;
import jakarta.persistence.PreUpdate;
import jakarta.persistence.Table;
import jakarta.persistence.Transient;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.Size;

@Entity
@Table(name = "usuarios")
public class Usuario {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@NotEmpty(message="el campo de nombre es obligatorio")
	@Size(min=2, message="el nombre debe tener al menos 2 caracteres")
	private String nombre;
	
	
	@NotEmpty(message="Es obligatorio")
	@Email(message="Ingresar email valido")
	private String email;
	
	@NotEmpty(message="el campo de password es obligatorio")
	@Size(min=6, message="el password debe tener al menos 2 caracteres")
	private String password;
	
	@Transient
	@NotEmpty(message="el campo de nombre es obligatorio")
	@Size(min=2, message="el nombre debe tener al menos 2 caracteres")
	private String confirmacion;
	
	
	@Column(updatable=false)
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date createdAt;
	
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date updatedAt;
	
	@OneToMany(mappedBy="creadorPublicacion", fetch=FetchType.LAZY)
	private List<Publicacion> listaPublicaciones;
	
	@OneToMany(mappedBy="autor", fetch=FetchType.LAZY)
	private List<Mensaje> mensajes;
	
	@OneToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "ubicacion_id")
	private Ubicacion ubicacionUsuario;
	
	public Usuario() {
		
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getConfirmacion() {
		return confirmacion;
	}

	public void setConfirmacion(String confirmacion) {
		this.confirmacion = confirmacion;
	}

	public Date getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	public Date getUpdatedAt() {
		return updatedAt;
	}

	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}
	
	public List<Mensaje> getMensajes() {
		return mensajes;
	}

	public void setMensajes(List<Mensaje> mensajes) {
		this.mensajes = mensajes;
	}

	public List<Publicacion> getListaPublicaciones() {
		return listaPublicaciones;
	}

	public void setListaPublicaciones(List<Publicacion> listaPublicaciones) {
		this.listaPublicaciones = listaPublicaciones;
	}

	public Ubicacion getUbicacionUsuario() {
		return ubicacionUsuario;
	}

	public void setUbicacionUsuario(Ubicacion ubicacionUsuario) {
		this.ubicacionUsuario = ubicacionUsuario;
	}

	@PrePersist
    protected void onCreate() {
        this.createdAt = new Date();
    }

    @PreUpdate
    protected void onUpdate() {
        this.updatedAt = new Date();
    }
}
