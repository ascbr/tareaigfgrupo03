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
@Table(name = "TB_aplicativo", catalog = "tarea", schema = "")
@NamedQueries({
@NamedQuery(name = "TB_aplicativo.findAll", query = "SELECT TB_a FROM TB_aplicativo TB_a"),
@NamedQuery(name = "TB_aplicativo.findByf_ingreso", query = "SELECT TB_a FROM TB_aplicativo TB_a WHERE TB_a.f_ingreso = :f_ingreso"),
@NamedQuery(name = "TB_aplicativo.findByc_aplicativo", query = "SELECT TB_a FROM TB_aplicativo TB_a WHERE TB_a.c_aplicativo = :c_aplicativo")})

public class TB_aplicativo implements Serializable{
	private static final long serialVersionUID = 1L;
	private String c_aplicativo;
	private String d_aplicativo;
	private Date f_ingreso;

	//-----------get y set---------
	@Id
	@Basic(optional = false)
	@Column(name = "c_aplicativo")
	public String getC_aplicativo() {
		return c_aplicativo;
	}
	public void setC_aplicativo(String c_aplicativo) {
		this.c_aplicativo = c_aplicativo;
	}

	@Basic(optional = false)
	@Column(name = "d_aplicativo")
	public String getD_aplicativo() {
		return d_aplicativo;
	}
	public void setD_aplicativo(String d_aplicativo) {
		this.d_aplicativo = d_aplicativo;
	}

	@Basic(optional = false)
	@Column(name = "f_ingreso")
	public Date getF_ingreso() {
		return f_ingreso;
	}
	public void setF_ingreso(Date f_ingreso) {
		this.f_ingreso = f_ingreso;
	}
	//------------------------------------------------
	//-------funciones-----------

	 private TB_aplicativo(){ }
	 
	 public TB_aplicativo(String c_aplicativo, String d_aplicativo, Date f_ingreso){
	 this.c_aplicativo= c_aplicativo;
	 this.d_aplicativo=d_aplicativo;
	 this.f_ingreso=f_ingreso;
	 }
}


