package dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
//import java.sql.Date;
import java.util.*;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import datos.HibernateUtil;
import dominio.*;
import datos.HibernateUtil;

public class TB_aplicativoDAO {
	private HibernateUtil hibernateUtil = new HibernateUtil() ;
	private SessionFactory sessionFactory = hibernateUtil.getSessionFactory();
	private Session sesion;
	private Transaction tx;
	
	//---------------------------------------
	private void iniciaOperacion() throws HibernateException {
		sesion = sessionFactory.openSession() ;
		tx = sesion.beginTransaction() ;
	}
	
	private void manejaExcepcion(HibernateException he) throws HibernateException {
		tx.rollback();
		throw new HibernateException("Ocurrió un error en la capa DAO", he);
	}
//------------------------------------------------
//-------------funciones principales
	//--------------GUARDAR---------------------
		public void guardaActualiza(TB_aplicativo tb_aplicativo ) {
		try {
			iniciaOperacion() ;
			sesion.saveOrUpdate(tb_aplicativo) ;
			tx.commit() ;
			sesion.flush() ;
		} catch (HibernateException he) {
			manejaExcepcion(he) ;
			throw he ;
		} finally {
			sesion.close() ;
		}
	}
		
//---------------ELIMINAR
	public void eliminar(TB_aplicativo tb_aplicativo) {
		try {
			iniciaOperacion() ;
			sesion.delete(tb_aplicativo) ;
			tx.commit() ;
			sesion.flush() ;
		} catch (HibernateException he) {
			manejaExcepcion(he) ;
			throw he ;
		} finally {
			sesion.close() ;
		}
	}
	//----------------CONSULTAS
	//-------------lista completa
	public List<TB_aplicativo> daTB_aplicativo() {
		sesion = sessionFactory.openSession() ;
		Query query = sesion.getNamedQuery("TB_aplicativo.findAll");
		List<TB_aplicativo> tb_aplicativo = query.list() ;
		sesion.close() ;
		return tb_aplicativo;
	}
	// busca por fecha de ingreso
	public TB_aplicativo daTB_aplicativoByf_ingreso(Date f_ingreso) {
		sesion = sessionFactory.openSession() ;
		Query query = sesion.getNamedQuery("TB_aplicativo.findByf_ingreso");
		query.setParameter("f_ingreso", f_ingreso);
		TB_aplicativo tb_aplicativo = (TB_aplicativo) query.uniqueResult();
		sesion.close() ;
		return tb_aplicativo;
	}
	
	//-------busca por codigo de aplicativo
	public TB_aplicativo daTB_aplicativoByc_aplicativo(String c_aplicativo) {
		sesion = sessionFactory.openSession() ;
		Query query = sesion.getNamedQuery("TB_aplicativo.findByc_aplicativo");
		query.setParameter("c_aplicativo", c_aplicativo);
		TB_aplicativo tb_aplicativo = (TB_aplicativo) query.uniqueResult();
		sesion.close() ;
		return tb_aplicativo;
	}

}
