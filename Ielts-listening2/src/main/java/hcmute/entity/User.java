package hcmute.entity;

import java.io.Serializable;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import hcmute.utils.Constants;

@Entity
@Table(name = Constants.USER_RELATION)
public class User implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private String userId;

	@Column(columnDefinition = "varchar(255)")
	private String name;

	@Column(columnDefinition = "varchar(255)")
	private String sex;

	@Column(columnDefinition = "date")
	private String dateOfBirth;

	@Column(columnDefinition = "varchar(255)")
	private String email;

	@Column(columnDefinition = "varchar(255)")
	private String phoneNumber;

	@Column(columnDefinition = "varchar(255)")
	private String address;

	@Column(columnDefinition = "varchar(255)")
	private String image;

	@Column(columnDefinition = "varchar(255)")
	private String networth;

	@Column(name = "contributeScore")
	private Integer contributeScore;

	@OneToMany(mappedBy = "users", fetch = FetchType.LAZY)
	private List<Score> scores;

	@OneToMany(mappedBy = "users", fetch = FetchType.LAZY)
	private List<EnrrolCourse> enrrolCourses;

	@OneToMany(mappedBy = "users", fetch = FetchType.LAZY)
	private List<Course> courses;

	@OneToMany(mappedBy = "users", fetch = FetchType.LAZY)
	private List<Quiz> quizs;

	@OneToMany(mappedBy = "users", fetch = FetchType.LAZY)
	private List<QuizRepComment> quizRepComments;

	@OneToMany(mappedBy = "users", fetch = FetchType.LAZY)
	private List<QuizComment> quizComments;

	@OneToMany(mappedBy = "users", fetch = FetchType.LAZY)
	private List<EnrrolTest> enrrolTests;

	@OneToMany(mappedBy = "users", fetch = FetchType.LAZY)
	private List<Blog> blogs;

	@OneToMany(mappedBy = "users", fetch = FetchType.LAZY)
	private List<QAndA> qAndAs;

	@OneToMany(mappedBy = "users", fetch = FetchType.LAZY)
	private List<QAndAComment> qAndAComments;

	@OneToMany(mappedBy = "users", fetch = FetchType.LAZY)
	private List<QAndARepComment> qAndARepComments;

	@OneToMany(mappedBy = "users", fetch = FetchType.LAZY)
	private List<ReadNotify> readNotifys;

	@OneToOne
	@JoinColumn(name = "userName")
	private Account account;

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getDateOfBirth() {
		return dateOfBirth;
	}

	public void setDateOfBirth(String dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getNetworth() {
		return networth;
	}

	public void setNetworth(String networth) {
		this.networth = networth;
	}

	public int getContributeScore() {
		return contributeScore;
	}

	public void setContributeScore(int contributeScore) {
		this.contributeScore = contributeScore;
	}

	public List<Score> getScores() {
		return scores;
	}

	public void setScores(List<Score> scores) {
		this.scores = scores;
	}

	public List<EnrrolCourse> getEnrrolCourses() {
		return enrrolCourses;
	}

	public void setEnrrolCourses(List<EnrrolCourse> enrrolCourses) {
		this.enrrolCourses = enrrolCourses;
	}

	public List<Course> getCourses() {
		return courses;
	}

	public void setCourses(List<Course> courses) {
		this.courses = courses;
	}

	public List<Quiz> getQuizs() {
		return quizs;
	}

	public void setQuizs(List<Quiz> quizs) {
		this.quizs = quizs;
	}

	public List<QuizRepComment> getQuizRepComments() {
		return quizRepComments;
	}

	public void setQuizRepComments(List<QuizRepComment> quizRepComments) {
		this.quizRepComments = quizRepComments;
	}

	public List<QuizComment> getQuizComments() {
		return quizComments;
	}

	public void setQuizComments(List<QuizComment> quizComments) {
		this.quizComments = quizComments;
	}

	public List<EnrrolTest> getEnrrolTests() {
		return enrrolTests;
	}

	public void setEnrrolTests(List<EnrrolTest> enrrolTests) {
		this.enrrolTests = enrrolTests;
	}

	public List<Blog> getBlogs() {
		return blogs;
	}

	public void setBlogs(List<Blog> blogs) {
		this.blogs = blogs;
	}

	public List<QAndA> getqAndAs() {
		return qAndAs;
	}

	public void setqAndAs(List<QAndA> qAndAs) {
		this.qAndAs = qAndAs;
	}

	public List<QAndAComment> getqAndAComments() {
		return qAndAComments;
	}

	public void setqAndAComments(List<QAndAComment> qAndAComments) {
		this.qAndAComments = qAndAComments;
	}

	public List<QAndARepComment> getqAndARepComments() {
		return qAndARepComments;
	}

	public void setqAndARepComments(List<QAndARepComment> qAndARepComments) {
		this.qAndARepComments = qAndARepComments;
	}

	public List<ReadNotify> getReadNotifys() {
		return readNotifys;
	}

	public void setReadNotifys(List<ReadNotify> readNotifys) {
		this.readNotifys = readNotifys;
	}

	public Account getAccount() {
		return account;
	}

	public void setAccount(Account account) {
		this.account = account;
	}

	public User(String userId, String name, String sex, String dateOfBirth, String email, String phoneNumber,
			String address, String image, String networth, int contributeScore, List<Score> scores,
			List<EnrrolCourse> enrrolCourses, List<Course> courses, List<Quiz> quizs,
			List<QuizRepComment> quizRepComments, List<QuizComment> quizComments, List<EnrrolTest> enrrolTests,
			List<Blog> blogs, List<QAndA> qAndAs, List<QAndAComment> qAndAComments,
			List<QAndARepComment> qAndARepComments, List<ReadNotify> readNotifys, Account account) {
		this.userId = userId;
		this.name = name;
		this.sex = sex;
		this.dateOfBirth = dateOfBirth;
		this.email = email;
		this.phoneNumber = phoneNumber;
		this.address = address;
		this.image = image;
		this.networth = networth;
		this.contributeScore = contributeScore;
		this.scores = scores;
		this.enrrolCourses = enrrolCourses;
		this.courses = courses;
		this.quizs = quizs;
		this.quizRepComments = quizRepComments;
		this.quizComments = quizComments;
		this.enrrolTests = enrrolTests;
		this.blogs = blogs;
		this.qAndAs = qAndAs;
		this.qAndAComments = qAndAComments;
		this.qAndARepComments = qAndARepComments;
		this.readNotifys = readNotifys;
		this.account = account;
	}

	public User() {
		super();
	}

}
