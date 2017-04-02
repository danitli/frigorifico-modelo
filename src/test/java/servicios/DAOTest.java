package servicios;

import java.sql.DriverManager;
import java.util.GregorianCalendar;

import org.apache.log4j.Logger;
import org.junit.Assert;

import configuracion.Aplicacion;
import especie.Especie;
import especie.Ovino;
import especie.Porcino;
import especie.Vacuno;
import establecimiento.Establecimiento;
import tropa.Procedencia;
import tropa.Tropa;
import tropa.TropaReservada;

public class DAOTest {
	private static DAOTest _instance = null;
	private static Logger logger = Logger.getLogger(TropaDAOTest.class.getName());
	private Tropa tropa1 = new Tropa();
	
	private DAOTest(){
		
	}
	
	public static DAOTest getInstance(){
		if (_instance == null){
			_instance = new DAOTest();
			
		}
		return _instance;
	}
		
	public void setUpTest(){		
		try {
			logger.info("Startingemory HSQL database for unit tests");
			Class.forName("org.hsqldb.jdbcDriver");
			DriverManager.getConnection("jdbc:hsqldb:mem:unit-testing-jpa", "sa", "");
		} catch (Exception ex) {
			ex.printStackTrace();
			Assert.fail("Exception during HSQL database startup.");
		}
		try {
			logger.info("BuildingEntityManager for unit tests");
			Aplicacion.setEntityManagerFactoryForTest();
		} catch (Exception ex) {
			ex.printStackTrace();
			Assert.fail("Exception during JPA EntityManager instanciation.");
		}
		
		EstablecimientoDAO es = new EstablecimientoDAO();
		Establecimiento establecimiento = es.obtenerEstablecimiento(1);

		if (establecimiento == null) {
			Establecimiento capiangos = new Establecimiento();
			capiangos.setCodigoEstablecimiento("01.029.0.21924/00");
			capiangos.setCuit(30714579785L);
			capiangos.setNombre("Capiangos S.R.L.");
			capiangos.setLocalidad("Chascomús");
			capiangos.setDireccion("Calle Chascomús");
			capiangos.setNumeroHabilitacion(4833);
			capiangos.setProvincia("Buenos Aires");
			capiangos.setTelefono("(0221) 15-5574055");
			capiangos.setTitular("El Cora");
			es.salvarEstablecimiento(capiangos);
			establecimiento = capiangos;
		}
		
		Procedencia procedencia1= new Procedencia();
		Procedencia procedencia2= new Procedencia();
		Procedencia procedencia3= new Procedencia();
		procedencia1.setDescripcion("Estancias");
		procedencia2.setDescripcion("Remate");
		procedencia3.setDescripcion("Productores");
		ProcedenciaDAO procedenciaDAO = new ProcedenciaDAO();
		procedenciaDAO.salvar(procedencia1);
		procedenciaDAO.salvar(procedencia2);
		procedenciaDAO.salvar(procedencia3);
		
		Ovino ovino = new Ovino();
		ovino.setDescripcion("Ovino");
		Porcino porcino = new Porcino();
		porcino.setDescripcion("Porcino");
		Vacuno vacuno = new Vacuno();
		vacuno.setDescripcion("Vacuno");
		
		EspecieDAO especieDAO = new EspecieDAO();
		especieDAO.salvar(ovino);
		especieDAO.salvar(porcino);
		especieDAO.salvar(vacuno);
		
		TropaReservada tropaReservada1 = new TropaReservada();
		tropaReservada1.setAnio(2017);
		tropaReservada1.setDesde(1);
		tropaReservada1.setHasta(1000);
		tropaReservada1.setUltimaTropa(1);
		tropaReservada1.setProcedencia(procedencia1);
		
		TropaReservada tropaReservada2 = new TropaReservada();
		tropaReservada2.setAnio(2017);
		tropaReservada2.setDesde(1001);
		tropaReservada2.setHasta(2000);
		tropaReservada2.setUltimaTropa(1001);
		tropaReservada2.setProcedencia(procedencia2);
		
		TropaReservada tropaReservada3 = new TropaReservada();
		tropaReservada3.setAnio(2017);
		tropaReservada3.setDesde(2001);
		tropaReservada3.setHasta(5000);
		tropaReservada3.setUltimaTropa(2001);
		tropaReservada3.setProcedencia(procedencia3);
		
		TropaReservadaDAO tropaReservadaDAO = new TropaReservadaDAO();
		tropaReservadaDAO.salvar(tropaReservada1);
		tropaReservadaDAO.salvar(tropaReservada2);
		tropaReservadaDAO.salvar(tropaReservada3);
		
		Procedencia procedencia = procedenciaDAO.obtenerProcedencia(1);
		TropaReservada treservada = tropaReservadaDAO.obtenerTropaReservadaPorProcedenciaYanioActual(procedencia);
		
		Integer idEspecie = 0;
		for (Especie especie : especieDAO.obtenerEspecies()) {
			if (especie.getDescripcion().equalsIgnoreCase("Porcino")){
				idEspecie = especie.getIdEspecie();
			}
		}
		Especie especie = especieDAO.obtenerEspecie(idEspecie);

		tropa1.setEstablecimiento(establecimiento);
		tropa1.setAnimalesRecibidos(75);
		tropa1.setNumeroTropa(treservada.obtenerSiguienteNroDeTropa());
		tropa1.setFechaIngreso(new GregorianCalendar().getTime());
		tropa1.setFechaFaena(new GregorianCalendar().getTime());
		tropa1.setEspecie(especie);

		TropaDAO trDAO = new TropaDAO();
		trDAO.salvarTropa(tropa1);		
	}
	
	public void unSetUpTest(){
		logger.info("Shuting Hibernate JPA layer.");
		Aplicacion.closeEntityManagerFactoryForTest();
	}
	
	public Tropa getTropa(){
		return this.tropa1;
	}
}
