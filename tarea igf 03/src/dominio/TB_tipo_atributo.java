package dominio;

//import java.sql.Date;
import java.util.*;
import java.io.Serializable;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

@Entity
@Table(name = "TB_tipo_atributo", catalog = "tarea", schema = "")
@NamedQueries({
@NamedQuery(name = "TB_tipo_atributo.findAll", query = "SELECT TB_t FROM TB_tipo_atributo TB_t"),
@NamedQuery(name = "TB_tipo_atributo.findByf_ingreso", query = "SELECT TB_t FROM TB_tipo_atributo TB_t WHERE TB_t.f_ingreso = :f_ingreso"),
@NamedQuery(name = "TB_tipo_atributo.findByc_tipo_atributo", query = "SELECT TB_t FROM TB_tipo_atributo TB_t WHERE TB_t.c_tipo_atributo = :c_tipo_atributo")})

public class TB_tipo_atributo {

	private String c_tipo_atributo;
	private String d_tipo_atributo;
	private Date f_ingreso;
	
	
	//------------get y set-----------
	@Id
	@Basic(optional = false)
	@Column(name = "c_tipo_atributo")
	public String getC_tipo_atributo() {
		return c_tipo_atributo;
	}
	public void setC_tipo_atributo(String c_tipo_atributo) {
		this.c_tipo_atributo = c_tipo_atributo;
	}
	
	@Basic(optional = false)
	@Column(name = "d_tipo_atributo")
	public String getD_tipo_atributo() {
		return d_tipo_atributo;
	}
	public void setD_tipo_atributo(String d_tipo_atributo) {
		this.d_tipo_atributo = d_tipo_atributo;
	}
	@Basic(optional = false)
	@Column(name = "f_ingreso")
	public Date getF_ingreso() {
		return f_ingreso;
	}
	public void setF_ingreso(Date t_ingreso) {
		this.f_ingreso = t_ingreso;
	}
	//------------------------------------------------
		//-------funciones-----------

		 private TB_tipo_atributo(){ }
		 
		 public TB_tipo_atributo(String c_tipo_atributo, String d_tipo_atributo,Date f_ingreso){
		 this.c_tipo_atributo= c_tipo_atributo;
		 this.d_tipo_atributo=d_tipo_atributo;
		 this.f_ingreso=f_ingreso;
		 }
	
}
