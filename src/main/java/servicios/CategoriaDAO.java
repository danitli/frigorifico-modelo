package servicios;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import configuracion.Aplicacion;
import tropa.Animal;
import tropa.Categoria;
import tropa.Tropa;

public class CategoriaDAO extends DAO{

	public Categoria obtenerCategoria(int id){
		return (Categoria)this.obtener(Categoria.class, id);
	}
	
	public List<Categoria> obtenerCategoriasPorEspecie(int idEspecie){
		Aplicacion ap = Aplicacion.getInstance();
		EntityManager em = ap.getEntityManager();
		
		Query query = em.createQuery("SELECT c FROM Categoria c WHERE c.especie.idEspecie = :idEspecie")
				.setParameter("idEspecie", idEspecie);
	
		return (List<Categoria>) query.getResultList();
		
	}
	
}
