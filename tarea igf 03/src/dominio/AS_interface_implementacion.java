package dominio;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

@Entity
@Table(name = "AS_interface_implementa", catalog = "tarea", schema = "")
@NamedQueries({
@NamedQuery(name = "AS_interface_implementa.findAll", query = "SELECT m FROM AS_interface_implementa m"),
@NamedQuery(name = "AS_interface_implementa.findByNombres", query = "SELECT m FROM AS_interface_implementa m WHERE m.c_interface_implementa = :c_interface_implementa")})

public class AS_interface_implementacion {
	private int c_interface_implementa;
	private int c_interface_padre;
	private int c_interface_hijo;
	
	//constructor
	public AS_interface_implementacion(int c_interface_implementa,int c_interface_padre, int c_interface_hijo) {
		super();
		this.c_interface_implementa = c_interface_implementa;
		this.c_interface_padre = c_interface_padre;
		this.c_interface_hijo = c_interface_hijo;
	}

	@Id		
	@Basic(optional = false)	
	@Column(name = "c_interface_implementa")
	public int getC_interface_implementa() {
		return c_interface_implementa;
	}

	public void setC_interface_implementa(int c_interface_implementa) {
		this.c_interface_implementa = c_interface_implementa;
	}

	@Id		
	@Basic(optional = false)	
	@Column(name = "c_interface_padre")
	public int getC_interface_padre() {
		return c_interface_padre;
	}

	public void setC_interface_padre(int c_interface_padre) {
		this.c_interface_padre = c_interface_padre;
	}

	@Id		
	@Basic(optional = false)	
	@Column(name = "c_interface_hijo")
	public int getC_interface_hijo() {
		return c_interface_hijo;
	}

	public void setC_interface_hijo(int c_interface_hijo) {
		this.c_interface_hijo = c_interface_hijo;
	}
	
}
