package servicios;

import tropa.Categoria;

public class CategoriaDAO extends DAO{

	public Categoria obtenerCategoria(Long id){
		return (Categoria)this.obtener(Categoria.class, id);
	}
	
}
