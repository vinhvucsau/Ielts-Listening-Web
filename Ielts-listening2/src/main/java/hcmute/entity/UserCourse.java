package hcmute.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import hcmute.utils.compositeId.CompositeUserCourse;

@Entity
@IdClass(CompositeUserCourse.class)
@Table(name = "user_course" )
public class UserCourse implements Serializable{

	private static final long serialVersionUID = 1L;
	
	@Id
	@ManyToOne
	@JoinColumn(name = "courseId")
	private Course courses;
	
	@Id
	@ManyToOne
	@JoinColumn(name = "userId")
	private User users;
	
	@Column(name = "acceptDay")
	private Date acceptDay;

	
	
	public Course getCourses() {
		return courses;
	}


	public void setCourses(Course courses) {
		this.courses = courses;
	}



	public User getUsers() {
		return users;
	}



	public void setUsers(User users) {
		this.users = users;
	}



	public Date getAcceptDay() {
		return acceptDay;
	}



	public void setAcceptDay(Date acceptDay) {
		this.acceptDay = acceptDay;
	}



	public UserCourse(Course courses, User users, Date acceptDay) {
		super();
		this.courses = courses;
		this.users = users;
		this.acceptDay = acceptDay;
	}



	public UserCourse() {
		super();
	}
	
}
