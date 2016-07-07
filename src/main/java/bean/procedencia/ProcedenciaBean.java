package bean.procedencia;

public class ProcedenciaBean {

	
	private Long idProcedencia;
	private String descripcion;
	
	
	public ProcedenciaBean () {
		
	}


	public Long getIdProcedencia() {
		return idProcedencia;
	}


	public void setIdProcedencia(Long idProcedencia) {
		this.idProcedencia = idProcedencia;
	}


	public String getDescripcion() {
		return descripcion;
	}


	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	
	
	@Override
	public String toString(){
		return this.getDescripcion();
	}
	
	
}
