package hcmute.utils.compositeId;

import java.io.Serializable;
import java.util.Objects;

public class CompositeHistoryTestId implements Serializable{

	private static final long serialVersionUID = 1L;
	private String partId;
	private String enrrolId;
	
	
	public String getPartId() {
		return partId;
	}
	public void setPartId(String partId) {
		this.partId = partId;
	}
	public String getEnrrolId() {
		return enrrolId;
	}
	public void setEnrrolId(String enrrolId) {
		this.enrrolId = enrrolId;
	}
	@Override
	public int hashCode() {
		return Objects.hash(enrrolId, partId);
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		CompositeHistoryTestId other = (CompositeHistoryTestId) obj;
		return Objects.equals(enrrolId, other.enrrolId) && Objects.equals(partId, other.partId);
	}
	
	
}
