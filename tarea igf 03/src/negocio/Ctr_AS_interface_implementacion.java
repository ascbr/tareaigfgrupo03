package negocio;

import java.util.List;
import dao.*;
import dominio.*;

public class Ctr_AS_interface_implementacion {
	private AS_interface_implementacionDAO daoMiembro = new AS_interface_implementacionDAO();

	public boolean crearAS_interface_implementacion(int c_interface_implementa,int c_interface_padre, int c_interface_hijo ) {
		if (daoMiembro.daAS_interface_implementacionByUsuario(c_interface_implementa) == null) {
			AS_interface_implementacion miembro = new AS_interface_implementacion(c_interface_implementa,c_interface_padre,c_interface_hijo);
			daoMiembro.guardaActualiza(miembro);
			return true ;
		}
		else
			return false ;
	}
	
	public boolean eliminar(int c_interface_implementa) {
		if (daoMiembro.dainterfaceById(c_interface_implementa)!= null) {
			AS_interface_implementacion miembro = daoMiembro.daAS_interface_implementacionByUsuario(c_interface_implementa);
			daoMiembro.eliminar(miembro) ;
			return true ;
		}
		else
			return false ;
	}
	public boolean actualizar(int c_interface_implementa, int c_interface_padre,int c_interface_hijo) {
		if (daoMiembro.daAS_interface_implementacionByUsuario(c_interface_implementa) != null) {
			AS_interface_implementacion miembro = new AS_interface_implementacion(c_interface_implementa,c_interface_padre,c_interface_hijo);
			daoMiembro.guardaActualiza(miembro);
			return true ;
		}
		else
			return false ;
	} 
	
	public List<AS_interface_implementacion> miembro(){
		return daoMiembro.daAS_interface_implementacion();
	}	





}
