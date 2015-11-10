package dominio;
import java.util.Date;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

@Entity
@Table(name = "AS_interface", catalog = "tarea", schema = "")
@NamedQueries({
@NamedQuery(name = "AS_interface.findAll", query = "SELECT m FROM AS_interface m"),
@NamedQuery(name = "AS_interface.findByNombres", query = "SELECT m FROM AS_interface m WHERE m.c_interface = :c_interface")})

public class AS_interface {
 
 private int c_interface;
  private String d_interface;
  private String c_usuario;
  private String f_ingreso;
  
    
  public AS_interface(int c_interface, String d_interface, String c_usuario, String f_ingreso2) {
	super();
	this.c_interface = c_interface;
	this.d_interface = d_interface;
	this.c_usuario = c_usuario;
	this.f_ingreso = f_ingreso2;
}
  
    @Id		
	@Basic(optional = false)	
	@Column(name = "c_interface")
public int getC_interface() {
		return c_interface;
	}
	public void setC_interface(int c_interface) {
		this.c_interface = c_interface;
	}
	
	@Id		
	@Basic(optional = false)	
	@Column(name = "d_interface")
	public String getD_interface() {
		return d_interface;
	}
	public void setD_interface(String d_interface) {
		this.d_interface = d_interface;
	}
	
	@Id		
	@Basic(optional = false)	
	@Column(name = "c_usuario")
	public String getC_usuario() {
		return c_usuario;
	}
	public void setC_usuario(String c_usuario) {
		this.c_usuario = c_usuario;
	}
	
	@Id		
	@Basic(optional = false)	
	@Column(name = "f_ingreso")
	public String getF_ingreso() {
		return f_ingreso;
	}
	public void setF_ingreso(String f_ingreso) {
		this.f_ingreso = f_ingreso;
	}    
}
