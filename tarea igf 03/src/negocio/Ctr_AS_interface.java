package negocio;
import java.util.List;
import dao.*;
import dominio.*;

public class Ctr_AS_interface {
 private AS_interfaceDAO daoMiembro = new AS_interfaceDAO();

	public boolean crearAS_interface(int c_interface, String d_interface,String c_usuario,String f_ingreso) {
		if (daoMiembro.daAS_interfaceByUsuario(c_usuario) == null) {
			AS_interface miembro = new AS_interface(c_interface,d_interface,c_usuario,f_ingreso);
			daoMiembro.guardaActualiza(miembro);
			return true ;
		}
		else
			return false ;
	}
	
	public boolean eliminar(String c_interface) {
		if (daoMiembro.dainterfaceById(c_interface) != null) {
			AS_interface miembro = daoMiembro.daAS_interfaceByUsuario(c_interface);
			daoMiembro.eliminar(miembro) ;
			return true ;
		}
		else
			return false ;
	}
	public boolean actualizar(int c_interface, String d_interface,String c_usuario,String f_ingreso) {
		if (daoMiembro.daAS_interfaceByUsuario(c_usuario) != null) {
			AS_interface miembro = new AS_interface(c_interface,d_interface,c_usuario,f_ingreso);
			daoMiembro.guardaActualiza(miembro);
			return true ;
		}
		else
			return false ;
	} 
	
	public List<AS_interface> miembro(){
		return daoMiembro.daAS_interface();
	}	

}//FIN DE CLASE DE CONTROL
