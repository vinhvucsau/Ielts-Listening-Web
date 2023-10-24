package hcmute.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import hcmute.utils.Constants;

@Entity
@Table(name = Constants.ENRROL_COURSE_RELATION)
public class EnrrolCourse implements Serializable{

	private static final long serialVersionUID = 1L;
	
	
	@Column(columnDefinition = "int")
	private int numberOfStart;
	
	@ManyToOne
	@JoinColumn(name = "userId")
	private User users;
	
	@ManyToOne
	@JoinColumn(name = "courseId")
	private Course courses;

	public EnrrolCourse(String courseId, int numberOfStart, User users, Course courses) {
		super();
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
