package bean.especie;

public class EspecieBean {
	
	private Long idEspecie;
	private String descripcion;
	private String codigo;
	
	public EspecieBean () {
		
	}
	
	public Long getIdEspecie() {
		return idEspecie;
	}
	public String getDescripcion() {
		return descripcion;
	}
	public String getCodigo() {
		return codigo;
	}

	public void setIdEspecie(Long idEspecie) {
		this.idEspecie = idEspecie;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public void setCodigo(String codigo) {
		this.codigo = codigo;
	}
	
	@Override
	public String toString(){
		return this.getDescripcion();
	}
	
	
}
