package hcmute.entity;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import hcmute.utils.Constants;
import hcmute.utils.compositeId.CompositeEnrrolCourseId;

@Entity
@Table(name = "enrrol_course")
@IdClass(CompositeEnrrolCourseId.class)
public class EnrrolCourse implements Serializable {

	private static final long serialVersionUID = 1L;


	@Column(name = "numberOfStars")
	private Integer numberOfStart;

	@Id
	@ManyToOne
	@JoinColumn(name = "userId")
	private User users;
	
	
	@Id
	@ManyToOne
	@JoinColumn(name = "courseId")
	private Course courses;

	public EnrrolCourse(int numberOfStart, User users, Course courses) {
		this.numberOfStart = numberOfStart;
		this.users = users;
		this.courses = courses;
	}

	public EnrrolCourse() {
		super();
	}

	public int getNumberOfStart() {
		return numberOfStart;
	}

	public void setNumberOfStart(int numberOfStart) {
		this.numberOfStart = numberOfStart;
	}

	public User getUsers() {
		return users;
	}

	public void setUsers(User users) {
		this.users = users;
	}

	public Course getCourses() {
		return courses;
	}

	public void setCourses(Course courses) {
		this.courses = courses;
	}

}
