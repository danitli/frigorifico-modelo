package servicios;

import java.sql.Connection;
import java.sql.DriverManager;

import javax.persistence.PersistenceContext;

import org.apache.log4j.Logger;
import org.junit.AfterClass;
import org.junit.Assert;
import org.junit.BeforeClass;
import org.junit.Test;

import configuracion.Aplicacion;
import establecimiento.Establecimiento;

@PersistenceContext(name = "frigorifico-test")
public class EstablecimientoDAOTest {

	private static Logger logger = Logger.getLogger(EstablecimientoDAOTest.class.getName());
	private static Connection connection;

	@BeforeClass
	public static void setUp() throws Exception {
		
		try {
			logger.info("Startingemory HSQL database for unit tests");
			Class.forName("org.hsqldb.jdbcDriver");
			connection = DriverManager.getConnection("jdbc:hsqldb:mem:unit-testing-jpa", "sa", "");
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
	}

	@AfterClass
	public static void tearDown() throws Exception {
		logger.info("Shuting Hibernate JPA layer.");
		Aplicacion.closeEntityManagerFactoryForTest();
	}

	@Test
	public void salvarYobtenerEstablecimientoDAOTest() {
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

		EstablecimientoDAO etablecimeintoDAO = new EstablecimientoDAO();
		etablecimeintoDAO.salvarEstablecimiento(capiangos);
		Establecimiento establecimientoDesdeLaBBDD = etablecimeintoDAO.obtenerEstablecimiento(1);

		Assert.assertTrue(establecimientoDesdeLaBBDD.getNombre().equals(capiangos.getNombre()));
	}

	@Test
	public void obtenerEstablecimientoInexistenteDAOTest() {
		EstablecimientoDAO establecimientoDAO = new EstablecimientoDAO();
		Establecimiento establecimiento = establecimientoDAO.obtenerEstablecimiento(120);
		Assert.assertNull("El establecimiento que estas pidiendo existe, por eso no es null y el test falla", establecimiento);
	}

	@Test
	public void actualizarEstablecimientoTest() {
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

		EstablecimientoDAO establecimientoDAO = new EstablecimientoDAO();
		establecimientoDAO.salvarEstablecimiento(capiangos);
		Establecimiento establecimientoDesdeLaBBDD = establecimientoDAO.obtenerEstablecimiento(2);
		
		establecimientoDesdeLaBBDD.setCodigoEstablecimiento("01.030.0.11111/00");
		establecimientoDesdeLaBBDD.setCuit(23291625169L);
		establecimientoDesdeLaBBDD.setNombre("Cora S.R.L.");
		establecimientoDesdeLaBBDD.setLocalidad("San Nicolas");
		establecimientoDesdeLaBBDD.setDireccion("Calle buenos aires");
		establecimientoDesdeLaBBDD.setNumeroHabilitacion(9999);
		establecimientoDesdeLaBBDD.setProvincia("Bs As");
		establecimientoDesdeLaBBDD.setTelefono("(0221) 15-111111111");
		establecimientoDesdeLaBBDD.setTitular("el cora con manija");
		
		establecimientoDAO.actualizarEstablecimiento(establecimientoDesdeLaBBDD);
		
		Establecimiento establecimientoCambiado = establecimientoDAO.obtenerEstablecimiento(2);
		Assert.assertEquals("El cambio de codigo de Establecimiento no fue actualizado en la bbdd", establecimientoCambiado.getCodigoEstablecimiento(), "01.030.0.11111/00");
		Assert.assertEquals("El cambio de cuit del establecimiento no fue actualizado en la bbdd", establecimientoCambiado.getCuit(), 23291625169L);
		Assert.assertEquals("El cambio de nombre del establecimiento no fue actualizado en la bbdd", establecimientoCambiado.getNombre(), "Cora S.R.L.");
		Assert.assertEquals("El cambio de localidad del establecimiento no fue actualizado en la bbdd", establecimientoCambiado.getLocalidad(), "San Nicolas");
		Assert.assertEquals("El cambio de direccion del establecimiento no fue actualizado en la bbdd", establecimientoCambiado.getDireccion(), "Calle buenos aires");
		Assert.assertEquals("El cambio de numero habilitacion del establecimiento no fue actualizado en la bbdd", establecimientoCambiado.getNumeroHabilitacion(), 9999);
		Assert.assertEquals("El cambio de provincia del establecimiento no fue actualizado en la bbdd", establecimientoCambiado.getProvincia(), "Bs As");
		Assert.assertEquals("El cambio de telefono del establecimiento no fue actualizado en la bbdd", establecimientoCambiado.getTelefono(), "(0221) 15-111111111");
		Assert.assertEquals("El cambio de titular del establecimiento no fue actualizado en la bbdd", establecimientoCambiado.getTitular(), "el cora con manija");
	}
}