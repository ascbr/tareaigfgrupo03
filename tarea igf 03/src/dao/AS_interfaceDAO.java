package dao;

import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import datos.*;
import dominio.*;

public class AS_interfaceDAO {
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
	
	public void guardaActualiza(AS_interface miembro) {
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
	public void eliminar(AS_interface miembro) {
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
	public AS_interface dainterfaceById(String c_interface){
		sesion = sessionFactory.openSession() ;
		// Retorna la instancia persistente de la clase por medio del atributo identidad
		AS_interface id = (AS_interface) sesion.get(AS_interface.class,new String(c_interface)) ;
		sesion.close() ;
		return id ;
	}
	
	public List<AS_interface> daAS_interface() {
		sesion = sessionFactory.openSession() ;
		Query query = sesion.getNamedQuery("AS_interface.findAll");
		List<AS_interface> miembro = query.list() ;
		sesion.close() ;
		return miembro;
	}
	
	public AS_interface daAS_interfaceByUsuario(String c_usuario) {
		sesion = sessionFactory.openSession() ;
		Query query = sesion.getNamedQuery("AS_interface.findByNombres");
		query.setParameter("c_usuario", c_usuario);
		AS_interface miembro = (AS_interface) query.uniqueResult();
		sesion.close() ;
		return miembro;
	}
		
	
}
