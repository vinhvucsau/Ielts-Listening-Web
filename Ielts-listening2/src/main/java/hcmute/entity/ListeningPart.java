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
@Table(name = Constants.LISTENING_PART_RELATION)
public class ListeningPart implements Serializable{

	private static final long serialVersionUID = 1L;
	
	@Id
	private String partId;
	
	@Column(columnDefinition = "varchar(255)")
	private String image;
	
	@Column(columnDefinition = "int")
	private String number;
	
	@Column(columnDefinition = "varchar(255)")
	private String audio;
	
	@Column(columnDefinition = "varchar(10000)")
	private String answerSheet;
	
	
	@OneToMany(mappedBy = "listeningParts", fetch = FetchType.LAZY)
	private List<AnswerTest> answerTests;
	
	@OneToMany(mappedBy = "listeningParts", fetch = FetchType.LAZY)
	private List<HistoryTest> historyTests;
	
	@ManyToOne
	@JoinColumn(name = "testId")
	private MockTest mockTests;

	public ListeningPart(String partId, String image, String number, String audio, String answerSheet,
			List<AnswerTest> answerTests, List<HistoryTest> historyTests, MockTest mockTests) {
		super();
		this.partId = partId;
		this.image = image;
		this.number = number;
		this.audio = audio;
		this.answerSheet = answerSheet;
		this.answerTests = answerTests;
		this.historyTests = historyTests;
		this.mockTests = mockTests;
	}
	
	public ListeningPart() {
		super();
	}

	public String getPartId() {
		return partId;
	}

	public void setPartId(String partId) {
		this.partId = partId;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public String getAudio() {
		return audio;
	}

	public void setAudio(String audio) {
		this.audio = audio;
	}

	public String getAnswerSheet() {
		return answerSheet;
	}

	public void setAnswerSheet(String answerSheet) {
		this.answerSheet = answerSheet;
	}

	public List<AnswerTest> getAnswerTests() {
		return answerTests;
	}

	public void setAnswerTests(List<AnswerTest> answerTests) {
		this.answerTests = answerTests;
	}

	public List<HistoryTest> getHistoryTests() {
		return historyTests;
	}

	public void setHistoryTests(List<HistoryTest> historyTests) {
		this.historyTests = historyTests;
	}

	public MockTest getMockTests() {
		return mockTests;
	}

	public void setMockTests(MockTest mockTests) {
		this.mockTests = mockTests;
	}
	
}
