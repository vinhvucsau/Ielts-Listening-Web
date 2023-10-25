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
@Table(name = Constants.QUIZ_RELATION)
public class Quiz implements Serializable {

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private String quizId;
	
	@Column(columnDefinition = "varchar(255)")
	private String question;
	
	@Column(columnDefinition = "varchar(255)")
	private String video;
	
	@Column(columnDefinition = "varchar(255)")
	private String image;
	
	@Column(columnDefinition = "date")
	private String createdDate;
	
	@Column(columnDefinition = "varchar(255)")
	private String title;
	
	@ManyToOne
	@JoinColumn(name = "userId")
	private User users;
	
	@OneToMany(mappedBy = "quizs", fetch = FetchType.LAZY)
	private List<AnswerQuiz> answerQuizs;
	
	@OneToMany(mappedBy = "quizs", fetch = FetchType.LAZY)
	private List<QuizComment> quizComments;

	public Quiz(String quizId, String question, String video, String image, String createdDate, String title,
			User users, List<AnswerQuiz> answerQuizs, List<QuizComment> quizComments) {
		super();
		this.quizId = quizId;
		this.question = question;
		this.video = video;
		this.image = image;
		this.createdDate = createdDate;
		this.title = title;
		this.users = users;
		this.answerQuizs = answerQuizs;
		this.quizComments = quizComments;
	}

	public Quiz() {
		super();
	}
	
	public String getQuizId() {
		return quizId;
	}

	public void setQuizId(String quizId) {
		this.quizId = quizId;
	}

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public String getVideo() {
		return video;
	}

	public void setVideo(String video) {
		this.video = video;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getCreatedDate() {
		return createdDate;
	}

	public void setCreatedDate(String createdDate) {
		this.createdDate = createdDate;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public User getUsers() {
		return users;
	}

	public void setUsers(User users) {
		this.users = users;
	}

	public List<AnswerQuiz> getAnswerQuizs() {
		return answerQuizs;
	}

	public void setAnswerQuizs(List<AnswerQuiz> answerQuizs) {
		this.answerQuizs = answerQuizs;
	}

	public List<QuizComment> getQuizComments() {
		return quizComments;
	}

	public void setQuizComments(List<QuizComment> quizComments) {
		this.quizComments = quizComments;
	}
	
	
}
