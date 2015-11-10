package dao;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import datos.*;
import dominio.*;

import datos.HibernateUtil;

public class AS_interface_implementacionDAO {
	private HibernateUtil hibernateUtil = new HibernateUtil() ;
	private SessionFactory sessionFactory = hibernateUtil.getSessionFactory();
	private Session sesion;
	private Transaction tx;
	
	private void iniciaOperacion() throws HibernateException {
		sesion = sessionFactory.openSession() ;
		tx = sesion.beginTransaction() ;
}
	
	private void manejaExcepcion(HibernateException he) throws HibernateException {
		tx.rollback();
		throw new HibernateException("Ocurrió un error en la capa DAO", he);
	}

	public void guardaActualiza(AS_interface_implementacion miembro) {
		try {
			iniciaOperacion() ;
			sesion.saveOrUpdate(miembro) ;
			tx.commit();
			sesion.flush() ;
		} catch (HibernateException he) {
			manejaExcepcion(he) ;
			throw he ;
		} finally {
			sesion.close() ;
		}
	}
	public void eliminar(AS_interface_implementacion miembro) {
		try {
			iniciaOperacion() ;
			sesion.delete(miembro) ;
			tx.commit() ;
			sesion.flush() ;
		} catch (HibernateException he) {
			manejaExcepcion(he) ;
			throw he ;
		} finally {
			sesion.close() ;
		}
	}
	public AS_interface_implementacion dainterfaceById(int c_interface_implementa){
		sesion = sessionFactory.openSession() ;
		// Retorna la instancia persistente de la clase por medio del atributo identidad
		AS_interface_implementacion id = (AS_interface_implementacion) sesion.get(AS_interface_implementacion.class,new String()) ;
		sesion.close() ;
		return id ;
	}
	
	public List<AS_interface_implementacion> daAS_interface_implementacion() {
		sesion = sessionFactory.openSession() ;
		Query query = sesion.getNamedQuery("AS_interface_implementacion.findAll");
		List<AS_interface_implementacion> miembro = query.list() ;
		sesion.close() ;
		return miembro;
	}
	
	public AS_interface_implementacion daAS_interface_implementacionByUsuario(int c_interface_implementa) {
		sesion = sessionFactory.openSession() ;
		Query query = sesion.getNamedQuery("AS_interface_implementacion.findByNombres");
		query.setParameter("c_usuario", c_interface_implementa);
		AS_interface_implementacion miembro = (AS_interface_implementacion) query.uniqueResult();
		sesion.close() ;
		return miembro;
	}





}

