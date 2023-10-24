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
@Table(name = Constants.MOCK_TEST_RELATION)
public class MockTest implements Serializable{

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private String testId;
	
	@Column(columnDefinition = "varchar(255)")
	private String testName;
	
	@Column(columnDefinition = "varchar(10000)")
	private String description;
	
	@Column(columnDefinition = "int")
	private int cost;
	
	@ManyToOne
	@JoinColumn(name = "topicId")
	private TopicTest topicTests;
	
	@OneToMany(mappedBy = Constants.MOCK_TEST_RELATION, fetch = FetchType.EAGER)
	private List<ListeningPart> listeningParts;
	
	@OneToMany(mappedBy = Constants.MOCK_TEST_RELATION, fetch = FetchType.EAGER)
	private List<EnrrolTest> enrrolTests;

	public MockTest(String testId, String testName, String description, int cost, TopicTest topicTests,
			List<ListeningPart> listeningParts, List<EnrrolTest> enrrolTests) {
		super();
		this.testId = testId;
		this.testName = testName;
		this.description = description;
		this.cost = cost;
		this.topicTests = topicTests;
		this.listeningParts = listeningParts;
		this.enrrolTests = enrrolTests;
	}

	public String getTestId() {
		return testId;
	}

	public void setTestId(String testId) {
		this.testId = testId;
	}

	public String getTestName() {
		return testName;
	}

	public void setTestName(String testName) {
		this.testName = testName;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getCost() {
		return cost;
	}

	public void setCost(int cost) {
		this.cost = cost;
	}

	public TopicTest getTopicTests() {
		return topicTests;
	}

	public void setTopicTests(TopicTest topicTests) {
		this.topicTests = topicTests;
	}

	public List<ListeningPart> getListeningParts() {
		return listeningParts;
	}

	public void setListeningParts(List<ListeningPart> listeningParts) {
		this.listeningParts = listeningParts;
	}

	public List<EnrrolTest> getEnrrolTests() {
		return enrrolTests;
	}

	public void setEnrrolTests(List<EnrrolTest> enrrolTests) {
		this.enrrolTests = enrrolTests;
	}
	
}
