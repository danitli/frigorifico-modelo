package servicios;

import javax.persistence.EntityManager;

import configuracion.Aplicacion;

public class DAO {

	public void salvar(Object anObject) {
		Aplicacion ap = Aplicacion.getInstance();
		EntityManager em = ap.getEntityManager();
		try {
			em.getTransaction().begin();
			em.persist(anObject);
			em.getTransaction().commit();
		} catch (Exception e) {
			e.printStackTrace();
			em.getTransaction().rollback();
		}
		//TODO debemos cerra la transaccion???
	}

	public void actualizar(Object anObject) {
		Aplicacion ap = Aplicacion.getInstance();
		EntityManager em = ap.getEntityManager();
		try {
			em.getTransaction().begin();
			em.merge(anObject);
			em.getTransaction().commit();
		} catch (Exception e) {
			e.printStackTrace();
			em.getTransaction().rollback();
		} 
		//TODO debemos cerra la transaccion???
	}

	public Object obtener(Class<?> entityClass, int primaryKey) {
		Aplicacion ap = Aplicacion.getInstance();
		EntityManager em = ap.getEntityManager();
		Object anObject = (Object) em.find(entityClass, primaryKey);
		return anObject;
	}

	public void eliminar(Object anObject) {
		Aplicacion ap = Aplicacion.getInstance();
		EntityManager em = ap.getEntityManager();
		try {
			em.getTransaction().begin();
			em.remove(anObject);
			em.getTransaction().commit();
		} catch (Exception e) {
			e.printStackTrace();
			em.getTransaction().rollback();
		} 
		//TODO debemos cerra la transaccion???
	}
	
	public void refresh(Object anObject){
		Aplicacion ap = Aplicacion.getInstance();
		EntityManager em = ap.getEntityManager();
		em.refresh(anObject);
	}
	
}
