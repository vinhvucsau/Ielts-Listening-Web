package hcmute.entity;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import hcmute.utils.Constants;

@Entity
@Table(name = Constants.COURSE_RELATION)
public class Course implements Serializable{

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private String courseId;
	
	@Column(columnDefinition = "varchar(1000)")
	private String courseName;
	
	@Column(columnDefinition = "varchar(10000)")
	private String description;
	
	@Column(columnDefinition = "varchar(255)")
	private String image;
	
	@Column(columnDefinition = "int")
	private int cost;
	
	@Column(columnDefinition = "date")
	private String enrrolmentDate;
	
	@OneToMany(mappedBy = Constants.COURSE_RELATION, fetch = FetchType.EAGER)
	private List<EnrrolCourse> enrrolCourses;
	
	@OneToMany(mappedBy = Constants.COURSE_RELATION, fetch = FetchType.EAGER)
	private List<Lesson> lessons;
	
	@ManyToOne
	@JoinColumn(name = "creatorId")
	private User users;

	public Course(String courseId, String courseName, String description, String image, int cost, String enrrolmentDate,
			List<EnrrolCourse> enrrolCourses, List<Lesson> lessons, User users) {
		super();
		this.courseId = courseId;
		this.courseName = courseName;
		this.description = description;
		this.image = image;
		this.cost = cost;
		this.enrrolmentDate = enrrolmentDate;
		this.enrrolCourses = enrrolCourses;
		this.lessons = lessons;
		this.users = users;
	}
	
	public Course() {
		super();
	}

	public String getCourseId() {
		return courseId;
	}

	public void setCourseId(String courseId) {
		this.courseId = courseId;
	}

	public String getCourseName() {
		return courseName;
	}

	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public int getCost() {
		return cost;
	}

	public void setCost(int cost) {
		this.cost = cost;
	}

	public String getEnrrolmentDate() {
		return enrrolmentDate;
	}

	public void setEnrrolmentDate(String enrrolmentDate) {
		this.enrrolmentDate = enrrolmentDate;
	}

	public List<EnrrolCourse> getEnrrolCourses() {
		return enrrolCourses;
	}

	public void setEnrrolCourses(List<EnrrolCourse> enrrolCourses) {
		this.enrrolCourses = enrrolCourses;
	}

	public List<Lesson> getLessons() {
		return lessons;
	}

	public void setLessons(List<Lesson> lessons) {
		this.lessons = lessons;
	}

	public User getUsers() {
		return users;
	}

	public void setUsers(User users) {
		this.users = users;
	}
	
	
}
