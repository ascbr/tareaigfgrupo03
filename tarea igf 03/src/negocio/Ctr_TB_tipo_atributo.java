package negocio;

import java.util.Date;
import java.util.List;

import dao.*;
import dominio.*;

public class Ctr_TB_tipo_atributo {
	//cambiar luego por spring
		private TB_tipo_atributoDAO daotb_tipo_atributo = new TB_tipo_atributoDAO() ;
		//-------------------------

		//----- funcion crear atributo
		public boolean crearTB_tipo_atributo(String c_tipo_atributo, String d_tipo_atributo,Date f_ingreso) {
			if (daotb_tipo_atributo.daTB_tipo_atributoByc_tipo_atributo(c_tipo_atributo) == null) {
				TB_tipo_atributo tb_tipo_atributo = new TB_tipo_atributo( c_tipo_atributo,d_tipo_atributo, f_ingreso);
				daotb_tipo_atributo.guardaActualiza(tb_tipo_atributo) ;
				return true ;
			}
			else
				return false ;
		}
		//--------------funcion eliminar atributo
		public boolean eliminarTB_tipo_atributo(String c_tipo_atributo) {
			
			if (daotb_tipo_atributo.daTB_tipo_atributoByc_tipo_atributo(c_tipo_atributo) != null) {
				TB_tipo_atributo tb_tipo_atributo = daotb_tipo_atributo.daTB_tipo_atributoByc_tipo_atributo(c_tipo_atributo) ;
				daotb_tipo_atributo.eliminar(tb_tipo_atributo) ;
				return true ;
			}
			else
				return false ;
		}

		//-------------- modificar atributo
		public boolean modificarTB_tipo_atributo(String c_tipo_atributo,String d_tipo_atributo,Date f_ingreso) {
			if(daotb_tipo_atributo.daTB_tipo_atributoByc_tipo_atributo(c_tipo_atributo) != null) {
				TB_tipo_atributo tb_tipo_atributo = daotb_tipo_atributo.daTB_tipo_atributoByc_tipo_atributo(c_tipo_atributo) ;
				tb_tipo_atributo.setC_tipo_atributo(c_tipo_atributo);
				tb_tipo_atributo.setD_tipo_atributo(d_tipo_atributo);
				tb_tipo_atributo.setF_ingreso(f_ingreso);
				daotb_tipo_atributo.guardaActualiza(tb_tipo_atributo) ;
				return true ;
			}
			else
				return false ;
		}
		//------consultas
		public List<TB_tipo_atributo> daTB_tipo_atributo(){
			return daotb_tipo_atributo.daTB_tipo_atributo();
		}

		public TB_tipo_atributo daTB_tipo_atributoByf_ingreso(Date f_ingreso) {
			return daotb_tipo_atributo.daTB_tipo_atributoByf_ingreso(f_ingreso) ;
		}

		public TB_tipo_atributo daTB_tipo_atributoByc_tipo_atributo(String c_tipo_atributo) {
			return daotb_tipo_atributo.daTB_tipo_atributoByc_tipo_atributo(c_tipo_atributo) ;
		}
}

