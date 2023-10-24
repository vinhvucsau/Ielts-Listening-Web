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
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private String enrrolId;
	
	@Column(columnDefinition = "date")
	private String enrollmentDate;
	
	@Column(columnDefinition = "double")
	private double score;
	
	@ManyToOne
	@JoinColumn(name = "userId")
	private User users;
	
	@ManyToOne
	@JoinColumn(name = "testId")
	private MockTest mockTests;
	
	@OneToMany(mappedBy = Constants.ENRROL_TEST_RELATION, fetch = FetchType.EAGER)
	private List<HistoryTest> historyTests;
}
