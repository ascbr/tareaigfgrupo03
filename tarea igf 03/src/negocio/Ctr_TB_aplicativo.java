package negocio;


import java.util.Date;
import java.util.List;

import dao.*;
import dominio.*;

public class Ctr_TB_aplicativo {

	//cambiar luego por spring
	private TB_aplicativoDAO daotb_aplicativo = new TB_aplicativoDAO() ;
	//-------------------------

	//----- funcion crear aplicativo
	public boolean crearTB_aplicativo(String c_aplicativo, String d_aplicativo,Date f_ingreso) {
		if (daotb_aplicativo.daTB_aplicativoByc_aplicativo(c_aplicativo) == null) {
			TB_aplicativo tb_aplicativo = new TB_aplicativo(c_aplicativo, d_aplicativo,f_ingreso);
			daotb_aplicativo.guardaActualiza(tb_aplicativo) ;
			return true ;
		}
		else
			return false ;
	}

	//--------------funcion eliminar aplicativo
	public boolean eliminarTB_aplicativo(String c_aplicativo) {
		
		if (daotb_aplicativo.daTB_aplicativoByc_aplicativo(c_aplicativo) != null) {
			TB_aplicativo tb_aplicativo = daotb_aplicativo.daTB_aplicativoByc_aplicativo(c_aplicativo) ;
			daotb_aplicativo.eliminar(tb_aplicativo) ;
			return true ;
		}
		else
			return false ;
	}

	//-------------- modificar aplicativo
	public boolean modificarTB_aplicativo(String c_aplicativo,String d_aplicativo,Date f_ingreso) {
		if(daotb_aplicativo.daTB_aplicativoByc_aplicativo(c_aplicativo) != null) {
			TB_aplicativo tb_aplicativo = daotb_aplicativo.daTB_aplicativoByc_aplicativo(c_aplicativo) ;
			tb_aplicativo.setC_aplicativo(c_aplicativo);
			tb_aplicativo.setD_aplicativo(d_aplicativo);
			tb_aplicativo.setF_ingreso(f_ingreso);
			daotb_aplicativo.guardaActualiza(tb_aplicativo) ;
			return true ;
		}
		else
			return false ;
	}
		
	//------consultas
	public List<TB_aplicativo> daTB_aplicativo(){
		return daotb_aplicativo.daTB_aplicativo();
	}

	public TB_aplicativo daTB_aplicativoByf_ingreso(Date f_ingreso) {
		return daotb_aplicativo.daTB_aplicativoByf_ingreso(f_ingreso) ;
	}

	public TB_aplicativo daTB_aplicativoByc_aplicativo(String c_aplicativo) {
		return daotb_aplicativo.daTB_aplicativoByc_aplicativo(c_aplicativo) ;
	}
}

