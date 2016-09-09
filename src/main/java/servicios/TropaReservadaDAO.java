package servicios;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Expression;
import javax.persistence.criteria.Root;

import configuracion.Aplicacion;
import tropa.Procedencia;
import tropa.Tropa;
import tropa.TropaReservada;

public class TropaReservadaDAO extends DAO {

	public TropaReservada obtenerTropaReservadaPorProcedenciaYanioActual(Procedencia procedencia) {
		Aplicacion ap = Aplicacion.getInstance();
		EntityManager em = ap.getEntityManager();
		CriteriaBuilder cb = em.getCriteriaBuilder();
		CriteriaQuery<TropaReservada> q = cb.createQuery(TropaReservada.class);
		Root<TropaReservada> tr = q.from(TropaReservada.class);

		Expression<java.sql.Date> date = cb.currentDate();
		Expression<Integer> aYear = cb.function("year", Integer.class, date);
		q.select(tr).where(cb.and(cb.equal(tr.get("anio"), aYear), cb.equal(tr.get("procedencia"), procedencia)));
		TypedQuery<TropaReservada> query = em.createQuery(q);
		List<TropaReservada> tropas = query.getResultList();
		TropaReservada tropaReservadaResultado = null;
		if (tropas.size() == 0) {
			// ERROR
		} else {
			tropaReservadaResultado = tropas.get(0);
		}

		return tropaReservadaResultado;
	}

	public boolean verificarTropaEnTropaReservada(int numeroTropa, int idProcedencia) {
		Aplicacion ap = Aplicacion.getInstance();
		EntityManager em = ap.getEntityManager();

		Query query = em.createQuery("SELECT tr FROM TropaReservada tr " + "WHERE tr.anio= year(curdate()) AND "
				+ "tr.procedencia.idProcedencia = :idProcedencia").setParameter("idProcedencia", idProcedencia);
		if (!query.getResultList().isEmpty()) {
			TropaReservada tropaReservada = (TropaReservada) query.getResultList().get(0);
			return tropaReservada.getDesde() <= numeroTropa && numeroTropa <= tropaReservada.getHasta();

		}
		return false;
	}

	public boolean resetearNumeroTropa(Procedencia procedencia) {
		Integer idProcedencia = procedencia.getIdProcedencia();

		TropaReservada tropaReservada = this.obtenerTropaReservadaPorProcedenciaYanioActual(procedencia);
		int ultimoNumeroTropaAntesDeBorrar = tropaReservada.getUltimaTropa();
		
		tropaReservada.setUltimaTropa(tropaReservada.getUltimaTropa() - 1);
		this.actualizar(tropaReservada);
		
		TropaDAO tropaDAO = new TropaDAO();
		Tropa tropa = tropaDAO.obtenerTropaPorNroTropa(ultimoNumeroTropaAntesDeBorrar, idProcedencia);
		this.eliminar(tropa);
		return tropaReservada.getUltimaTropa() == ultimoNumeroTropaAntesDeBorrar - 1;
	}
}
