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
@Table(name = Constants.Q_AND_A_RELATION)
public class QAndA implements Serializable{

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private String qAndAId;
	
	@Column(columnDefinition = "date")
	private String createdDate;
	
	@Column(columnDefinition = "varchar(1000)")
	private String content;
	
	@Column(columnDefinition = "varchar(255)")
	private String title;
	
	@Column(columnDefinition = "varchar(255)")
	private String image;
	
	@ManyToOne
	@JoinColumn(name = "userId")
	private User users;
	
	@OneToMany(mappedBy = Constants.Q_AND_A_RELATION, fetch = FetchType.EAGER)
	private List<QAndAComment> qAndAComments;

	public QAndA(String qAndAId, String createdDate, String content, String title, String image, User users,
			List<QAndAComment> qAndAComments) {
		super();
		this.qAndAId = qAndAId;
		this.createdDate = createdDate;
		this.content = content;
		this.title = title;
		this.image = image;
		this.users = users;
		this.qAndAComments = qAndAComments;
	}

	public String getqAndAId() {
		return qAndAId;
	}

	public void setqAndAId(String qAndAId) {
		this.qAndAId = qAndAId;
	}

	public String getCreatedDate() {
		return createdDate;
	}

	public void setCreatedDate(String createdDate) {
		this.createdDate = createdDate;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public User getUsers() {
		return users;
	}

	public void setUsers(User users) {
		this.users = users;
	}

	public List<QAndAComment> getqAndAComments() {
		return qAndAComments;
	}

	public void setqAndAComments(List<QAndAComment> qAndAComments) {
		this.qAndAComments = qAndAComments;
	}
	
}
