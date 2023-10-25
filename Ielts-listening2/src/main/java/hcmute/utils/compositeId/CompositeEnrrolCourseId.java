package hcmute.utils.compositeId;

import java.io.Serializable;
import java.util.Objects;


public class CompositeEnrrolCourseId implements Serializable{

	private static final long serialVersionUID = 1L;
	
	private String userId;
    private String courseId;
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getCourseId() {
		return courseId;
	}
	public void setCourseId(String courseId) {
		this.courseId = courseId;
	}
	@Override
	public int hashCode() {
		return Objects.hash(courseId, userId);
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		CompositeEnrrolCourseId other = (CompositeEnrrolCourseId) obj;
		return Objects.equals(courseId, other.courseId) && Objects.equals(userId, other.userId);
	}
	

}
