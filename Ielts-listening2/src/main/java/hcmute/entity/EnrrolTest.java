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
@Table(name = Constants.ENRROL_TEST_RELATION)
public class EnrrolTest implements Serializable{

	private static final long serialVersionUID = 1L;
	
	@Id
	private String enrrolId;
	
	@Column(columnDefinition = "date")
	private String enrollmentDate;
	
	@Column(columnDefinition = "int")
	private Integer timeTest;
	
	@Column(columnDefinition = "double")
	private double score;
	
	
	@ManyToOne
	@JoinColumn(name = "userId")
	private User users;
	
	@ManyToOne
	@JoinColumn(name = "testId")
	private MockTest mockTests;
	
	@OneToMany(mappedBy = "enrrolTests", fetch = FetchType.EAGER)
	private List<HistoryTest> historyTests;

	public String getEnrrolId() {
		return enrrolId;
	}

	public void setEnrrolId(String enrrolId) {
		this.enrrolId = enrrolId;
	}

	public String getEnrollmentDate() {
		return enrollmentDate;
	}

	public void setEnrollmentDate(String enrollmentDate) {
		this.enrollmentDate = enrollmentDate;
	}

	public Integer getTimeTest() {
		return timeTest;
	}

	public void setTimeTest(Integer timeTest) {
		this.timeTest = timeTest;
	}

	public double getScore() {
		return score;
	}

	public void setScore(double score) {
		this.score = score;
	}

	public User getUsers() {
		return users;
	}

	public void setUsers(User users) {
		this.users = users;
	}

	public MockTest getMockTests() {
		return mockTests;
	}

	public void setMockTests(MockTest mockTests) {
		this.mockTests = mockTests;
	}

	public List<HistoryTest> getHistoryTests() {
		return historyTests;
	}

	public void setHistoryTests(List<HistoryTest> historyTests) {
		this.historyTests = historyTests;
	}

	public EnrrolTest(String enrrolId, String enrollmentDate, Integer timeTest, double score, User users,
			MockTest mockTests, List<HistoryTest> historyTests) {
		super();
		this.enrrolId = enrrolId;
		this.enrollmentDate = enrollmentDate;
		this.timeTest = timeTest;
		this.score = score;
		this.users = users;
		this.mockTests = mockTests;
		this.historyTests = historyTests;
	}
	
	public EnrrolTest() {
		super();
	}
}
