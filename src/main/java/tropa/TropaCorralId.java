package tropa;

import java.io.Serializable;


public class TropaCorralId implements Serializable {

	private Long tropa_id_tropa;

	private Long corral_id_corral;

	@Override
	public int hashCode() {
		long dateToday = System.currentTimeMillis();
		System.out.println(tropa_id_tropa);
		System.out.println(corral_id_corral);
		return (int) (tropa_id_tropa + corral_id_corral + dateToday);
	}

	public boolean equals(Object object) {
		if (object instanceof TropaCorralId) {
			TropaCorralId otherId = (TropaCorralId) object;
			return (otherId.tropa_id_tropa == this.tropa_id_tropa) && (otherId.corral_id_corral == this.corral_id_corral);
		}
		return false;
	}
	
}
