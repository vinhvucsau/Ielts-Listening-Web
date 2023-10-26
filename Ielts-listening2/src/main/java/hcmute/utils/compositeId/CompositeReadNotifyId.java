package hcmute.utils.compositeId;

import java.io.Serializable;
import java.util.Objects;

public class CompositeReadNotifyId implements Serializable{
	
	private static final long serialVersionUID = 1L;
	private String userId;
	private String notifyId;
	@Override
	public int hashCode() {
		return Objects.hash(notifyId, userId);
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		CompositeReadNotifyId other = (CompositeReadNotifyId) obj;
		return Objects.equals(notifyId, other.notifyId) && Objects.equals(userId, other.userId);
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getNotifyId() {
		return notifyId;
	}
	public void setNotifyId(String notifyId) {
		this.notifyId = notifyId;
	}


}
