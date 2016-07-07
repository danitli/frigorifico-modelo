package servicios;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import configuracion.Aplicacion;
import especie.Especie;
import tropa.EstadoCorral;

public class EstadoCorralDAO extends DAO {

	public EstadoCorral obtenerEstadoCorral(Long id) {
		return (EstadoCorral) this.obtener(EstadoCorral.class, id);
	}
	
	public List<EstadoCorral> obtenerEstadosCorral() {
		Aplicacion ap = Aplicacion.getInstance();
		EntityManager em = ap.getEntityManager();

		Query query = em.createQuery("SELECT e FROM EstadoCorral e");
		List<EstadoCorral> todasLosEstadosCorral = (List<EstadoCorral>) query.getResultList();

		return todasLosEstadosCorral;
	}
}
