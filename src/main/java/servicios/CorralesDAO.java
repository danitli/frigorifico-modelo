package servicios;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import configuracion.Aplicacion;
import tropa.Corral;

public class CorralesDAO extends DAO{
	
	public Corral obtenerCorral(Long id) {
		return (Corral) this.obtener(Corral.class, id);
	}

	public List<Corral> obtenerCorrales() {
		Aplicacion ap = Aplicacion.getInstance();
		EntityManager em = ap.getEntityManager();

		Query query = em.createQuery("SELECT c FROM Corral c");
		List<Corral> todasLosCorrales = (List<Corral>) query.getResultList();

		return todasLosCorrales;
	}
}