package servicios;

import org.junit.Assert;

import tropa.Animal;
import tropa.Categoria;
import tropa.Tropa;

public class AnimalDAOTest {

	

	//@Test
	public void salvatYobtenerAnimalDAOTest() {
		
		
		TropaDAO trDAO = new TropaDAO();
		Tropa tropa = trDAO.obtenerTropaPorNroTropa(DAOTest.getInstance().getTropa().getNumeroTropa(), DAOTest.getInstance().getTropa().getProcedencia().getIdProcedencia());
		CategoriaDAO cs = new CategoriaDAO();
		Categoria categoria = cs.obtenerCategoria(1);

		TropaDAO tropaDAO = new TropaDAO();

		Animal animal1 = new Animal();
		animal1.setGarron(tropaDAO.obtenerSiguienteNumeroDeGarron());
		animal1.setPeso(250);
		animal1.setCategoria(categoria);
		animal1.setTropa(tropa);

		AnimalDAO animalDAO = new AnimalDAO();
		animalDAO.salvarAnimal(animal1);
		Animal animalBBDD = animalDAO.obtenerAnimalPorTropaYGarron(tropa, animal1.getGarron());

		Assert.assertEquals("El numero de garron NO COINCIDEEEEE!!!!", animal1.getGarron(), animalBBDD.getGarron());
	}
	
	public void obtenerAnimalesPorTropaTest(){
		
	}
}
