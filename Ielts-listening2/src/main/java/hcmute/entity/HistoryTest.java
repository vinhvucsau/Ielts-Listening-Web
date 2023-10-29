package hcmute.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import hcmute.utils.Constants;

@Entity
@Table(name = Constants.HISTORY_TEST_RELATION)

public class HistoryTest implements Serializable {

	private static final long serialVersionUID = 1L;


	@Id
	private String historyId;

	@Column(columnDefinition = "varchar(255)")
	private String answerOfUser;

	@Column(columnDefinition = "int")
	private int number;

	@ManyToOne
	@JoinColumn(name = "partId")
	private ListeningPart listeningParts;

	@ManyToOne
	@JoinColumn(name = "enrrolId")
	private EnrrolTest enrrolTests;

	public HistoryTest(String historyId, String answerOfUser, int number, ListeningPart listeningParts,
			EnrrolTest enrrolTests) {
		this.historyId = historyId;
		this.answerOfUser = answerOfUser;
		this.number = number;
		this.listeningParts = listeningParts;
		this.enrrolTests = enrrolTests;
	}
	public HistoryTest() {
		super();
	}
	public String getHistoryId() {
		return historyId;
	}
	public void setHistoryId(String historyId) {
		this.historyId = historyId;
	}
	public String getAnswerOfUser() {
		return answerOfUser;
	}
	public void setAnswerOfUser(String answerOfUser) {
		this.answerOfUser = answerOfUser;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public ListeningPart getListeningParts() {
		return listeningParts;
	}
	public void setListeningParts(ListeningPart listeningParts) {
		this.listeningParts = listeningParts;
	}
	public EnrrolTest getEnrrolTests() {
		return enrrolTests;
	}
	public void setEnrrolTests(EnrrolTest enrrolTests) {
		this.enrrolTests = enrrolTests;
	}
	
	
}
