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
@Table(name = Constants.USER_RELATION)
public class QuizComment implements Serializable{

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private String commentId;
	
	@Column(columnDefinition = "varchar(10000)")
	private String comment;
	
	@OneToMany(mappedBy = Constants.QUIZ_COMMENT_RELATION, fetch = FetchType.EAGER)
	private List<QuizRepComment> quizRepComments;
	
	@ManyToOne
	@JoinColumn(name = "userId")
	private User users;
	
	@ManyToOne
	@JoinColumn(name = "quizId")
	private Quiz quizs;

	public QuizComment(String commentId, String comment, List<QuizRepComment> quizRepComments, User users, Quiz quizs) {
		super();
		this.commentId = commentId;
		this.comment = comment;
		this.quizRepComments = quizRepComments;
		this.users = users;
		this.quizs = quizs;
	}

	public String getCommentId() {
		return commentId;
	}

	public void setCommentId(String commentId) {
		this.commentId = commentId;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public List<QuizRepComment> getQuizRepComments() {
		return quizRepComments;
	}

	public void setQuizRepComments(List<QuizRepComment> quizRepComments) {
		this.quizRepComments = quizRepComments;
	}

	public User getUsers() {
		return users;
	}

	public void setUsers(User users) {
		this.users = users;
	}

	public Quiz getQuizs() {
		return quizs;
	}

	public void setQuizs(Quiz quizs) {
		this.quizs = quizs;
	}
	
}
