package tropa;

import org.junit.Test;

import excepciones.CorralNoDisponibleParaGuardarAnimalesException;
import excepciones.MayorCantidadAnimalesQueCapacidadCorralException;
import tropa.Corral;
import tropa.FueraDeServicio;
import tropa.Libre;
import tropa.Ocupado;
import tropa.TropaCorral;


public class TropaCorralTest {

	@Test(expected = CorralNoDisponibleParaGuardarAnimalesException.class)
	public void asignarUnaTropaACorralOcupado()
			throws MayorCantidadAnimalesQueCapacidadCorralException, CorralNoDisponibleParaGuardarAnimalesException {
		Corral corral1 = new Corral(1, 20, new Ocupado());

		TropaCorral tropaCorral1 = new TropaCorral();
		tropaCorral1.setCorral(corral1);
		tropaCorral1.setOcupacion(15);
	}
	
	@Test(expected = CorralNoDisponibleParaGuardarAnimalesException.class)
	public void asignarUnaTropaACorralFueraDeServicio()
			throws MayorCantidadAnimalesQueCapacidadCorralException, CorralNoDisponibleParaGuardarAnimalesException {
		Corral corral1 = new Corral(1, 20, new FueraDeServicio());

		TropaCorral tropaCorral1 = new TropaCorral();
		tropaCorral1.setCorral(corral1);
		tropaCorral1.setOcupacion(15);
	} 

	@Test(expected = MayorCantidadAnimalesQueCapacidadCorralException.class)
	public void asignarUnaTropaACorralConMayorCantidadAnimalesQueSuCapacidad()
			throws MayorCantidadAnimalesQueCapacidadCorralException, CorralNoDisponibleParaGuardarAnimalesException {
		Corral corral1 = new Corral(1, 20, new Libre());

		TropaCorral tropaCorral1 = new TropaCorral();
		tropaCorral1.setCorral(corral1);
		tropaCorral1.setOcupacion(21);
	}
}