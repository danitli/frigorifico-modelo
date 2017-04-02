package servicios;

import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Random;

import org.junit.AfterClass;
import org.junit.Assert;
import org.junit.BeforeClass;
import org.junit.Test;

import com.google.gson.Gson;

import especie.Especie;
import establecimiento.Establecimiento;
import tropa.Animal;
import tropa.Procedencia;
import tropa.Tropa;
import tropa.TropaCorral;
import tropa.TropaReservada;

public class TropaDAOTest {

	
	@BeforeClass
	public static void setUp() {
		DAOTest daoTest = DAOTest.getInstance();
		daoTest.setUpTest();	
	}

	@AfterClass
	public static void tearDown() throws Exception {
		DAOTest daoTest = DAOTest.getInstance();
		daoTest.unSetUpTest();
	}

	@Test
	public void salvarYobtenerTropaDAOTest() {
		EstablecimientoDAO es = new EstablecimientoDAO();
		Establecimiento establecimiento = es.obtenerEstablecimiento(1);
		
		ProcedenciaDAO procedenciaDAO = new ProcedenciaDAO();
		Procedencia procedencia = procedenciaDAO.obtenerProcedencia(1);

		TropaReservadaDAO treservadaDAO = new TropaReservadaDAO();
		TropaReservada treservada = treservadaDAO.obtenerTropaReservadaPorProcedenciaYanioActual(procedencia);

		EspecieDAO especieDAO = new EspecieDAO();
		Especie especie = especieDAO.obtenerEspecie(2);

		Tropa tropa1 = new Tropa();
		tropa1.setEstablecimiento(establecimiento);
		tropa1.setProcedencia(procedencia);
		tropa1.setAnimalesRecibidos(100);
		tropa1.setNumeroTropa(treservada.obtenerSiguienteNroDeTropa());
		tropa1.setFechaIngreso(new GregorianCalendar(2017, 01, 24, 8, 30, 00).getTime());
		tropa1.setFechaFaena(new GregorianCalendar(2017, 01, 25, 15, 20, 10).getTime());
		tropa1.setEspecie(especie);

		TropaDAO trDAO = new TropaDAO();
		trDAO.salvarTropa(tropa1);
		Tropa tropaBBDD = trDAO.obtenerTropaPorNroTropa(tropa1.getNumeroTropa(), tropa1.getProcedencia().getIdProcedencia());

		Assert.assertEquals("Los numeros de tropa de la tropa salvada con la recuperad NO COINCIDEN!", tropa1.getNumeroTropa(),
				tropaBBDD.getNumeroTropa());
		Assert.assertEquals("La cantidad de animales recibidos NO es igual a la tropa salvada con la recuperada", tropa1.getAnimalesRecibidos(), 
				tropaBBDD.getAnimalesRecibidos());
		Assert.assertEquals("La fecha de Ingreso NO es igual a la tropa salvada con la recuperada", tropa1.getFechaIngreso(), 
				tropaBBDD.getFechaIngreso());
		Assert.assertEquals("La fecha de Faena NO es igual a la tropa salvada con la recuperada", tropa1.getFechaFaena(), 
				tropaBBDD.getFechaFaena());
		Assert.assertEquals("La especie NO es igual a la tropa salvada con la recuperada", tropa1.getEspecie(), 
				tropaBBDD.getEspecie());
		
		
		Assert.assertEquals("La especie NO es igual a la tropa salvada con la recuperada", tropa1.getEspecie(), 
				tropaBBDD.getEspecie());

		/*
		 * TODO: agregar los assert para las demas propiedades del objeto tropa1
		 * y tropaBBDD
		 */
	}

	//@Test
	public void obtenerUltimoGarronDeUnDiaDeterminadoTest() {
		Random random = new Random();
		
		EstablecimientoDAO es = new EstablecimientoDAO();
		Establecimiento establecimiento = es.obtenerEstablecimiento(1);

		List<Tropa> tropas = establecimiento.getTropas();
		int index = random.nextInt(tropas.size());
		Tropa randomTropa = tropas.get(index);

		Calendar cal = Calendar.getInstance();
		cal.setTime(randomTropa.getFechaFaena());
		GregorianCalendar fecha = new GregorianCalendar(cal.get(Calendar.YEAR), cal.get(Calendar.MONTH),
				cal.get(Calendar.DATE));

		int maxNroTropa = 0;
		Tropa tropaSeleccionada = null;
		for (Tropa tropa : establecimiento.getTropas()) {
			Calendar calTropa = Calendar.getInstance();
			calTropa.setTime(tropa.getFechaFaena());
			GregorianCalendar fechaTropa = new GregorianCalendar(calTropa.get(Calendar.YEAR),
					calTropa.get(Calendar.MONTH), calTropa.get(Calendar.DATE));
			if ((fechaTropa.get(Calendar.YEAR) == fecha.get(Calendar.YEAR))
					&& (fechaTropa.get(Calendar.MONTH) == fecha.get(Calendar.MONTH))
					&& (fechaTropa.get(Calendar.DATE) == fecha.get(Calendar.DATE))) {
				if (tropa.getNumeroTropa() > maxNroTropa) {
					maxNroTropa = tropa.getNumeroTropa();
					tropaSeleccionada = tropa;
				}
			}
		}
		int maxGarron = 0;
		for (Animal a : tropaSeleccionada.getAnimales()) {
			if (a.getGarron() > maxGarron) {
				maxGarron = a.getGarron();
			}
		}

		TropaDAO tropaDAO = new TropaDAO();
		// System.out.println(
		// "El ultimo Garron del dia " + fecha + "es: " +
		// tropaDAO.obtenerUltimoGarronDeUnDiaDeterminado(fecha));
		// System.out.println("El numero de tropa seleccionado al azar es: " +
		// randomTropa.getNumeroTropa());
		// System.out.println("El numero de tropa mayor del dia: " +
		// tropaSeleccionada.getNumeroTropa());
		// System.out.println("El ultimo numero de garron asignado para ese dia:
		// " + maxGarron);

		Assert.assertEquals(tropaDAO.obtenerUltimoGarronDeUnDiaDeterminado(fecha), maxGarron);
	}
	
	public void obtenerSiguienteNumeroDeGarronTest(){
		
	}
	
	//@Test
	public void obtenerTropa(){
		TropaDAO tropaDAO =  new TropaDAO();
		
		Tropa tropa = tropaDAO.obtenerTropa(60);
		
		Gson gson = new Gson();
//		System.out.println(gson.toJson(tropa));
		for (TropaCorral tropaCorral : tropa.getCorrales()) {
			System.out.println("TropaCorral: " + tropaCorral.getFechaEgreso() + "- Ocupacion: "+ tropaCorral.getOcupacion() + 
								"- Numero corral: " + tropaCorral.getCorral().getNumero() + "- Estado: " + tropaCorral.getCorral().getEstado());
		}
	}
	
}