package hcmute.services;

import java.time.LocalDateTime;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import hcmute.DAO.EnrollTestDao;
import hcmute.DAO.ListeningPartDao;
import hcmute.DAO.MockTestDAOImpl;
import hcmute.entity.EnrrolTest;
import hcmute.entity.ListeningPart;
import hcmute.entity.MockTest;
import hcmute.entity.User;

public class EnrollTestService{

	private EnrollTestDao enrollTestDao = new EnrollTestDao();
	
	public void insert(EnrrolTest enrollTest) {
		enrollTestDao.insert(enrollTest);
	}

	public void update(EnrrolTest enrollTest) {
		enrollTestDao.update(enrollTest);
	}

	public void delete(EnrrolTest enrollTest) throws Exception {
		enrollTestDao.delete(enrollTest);
	}

	public EnrrolTest findById(String enrollTestId) {
		return enrollTestDao.findById(enrollTestId);
	}

	public Long countAll() {
		return enrollTestDao.countAll();
	}

	public List<EnrrolTest> findAll() {
		return enrollTestDao.findAll();
	}

	public List<EnrrolTest> findAll(boolean all, int firstResult, int maxResult) {
		return enrollTestDao.findAll(all,firstResult,maxResult);
	}

	public double completeTest(String enrrolTestId) {
		EnrrolTest newEnrrolTest = enrollTestDao.findById(enrrolTestId);
		if (newEnrrolTest != null) {
			try {
				long numberOfCorrectAnswer = calcNumberOfCorrectAnswers(enrrolTestId);
				long numberOfQuestion = calcNumberOfQuestTion(enrrolTestId);
				double score = 10*((double)numberOfCorrectAnswer / numberOfQuestion);
				newEnrrolTest.setScore(score);
				enrollTestDao.update(newEnrrolTest);
				return score;
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return -1;
	}
	
	public long calcNumberOfCorrectAnswers(String enrollTestId) {
		EnrrolTest enrollTest = enrollTestDao.findById(enrollTestId);
		long number = 0;
		if(enrollTest != null) {
			number = enrollTest.getAnswerUsers().stream()
					.filter(answerUser -> answerUser.getAnswer().equals(answerUser.getAnswerTest().getAnswerKey()))
					.count();
		}
		return number;
	}
	
	public long calcNumberOfQuestTion(String enrollTestId) {
		EnrrolTest enrollTest = enrollTestDao.findById(enrollTestId);
		long number = 0;
		if(enrollTest != null) {
			number = enrollTest.getMockTests().getListeningParts().stream()
					.map(part -> part.getAnswerTests().size())
					.mapToLong(Integer::intValue)
					.sum();
		} 
		return number;
	}
	
	public List<EnrrolTest> findByUserIdAndMockTestId(String userId, String mockTestId) {
		return enrollTestDao.findByUserIdAndMockTestId(userId, mockTestId);
	}
	public List<EnrrolTest> findByMockTestId( String mockTestId) 
	{
		return enrollTestDao.findByMockTestId(mockTestId);
	}
	
	
	public EnrrolTest findByUserIdAndMockTestIdAndDate(String userId, String mockTestId, LocalDateTime date) {
		return enrollTestDao.findByUserIdAndMockTestIdAndDate(userId, mockTestId, date);
	}
	public EnrrolTest findByUserIdAndMockTestIdSoon(String userId, String mockTestId)
	{
		return enrollTestDao.findByUserIdAndMockTestIdSoon( userId,  mockTestId);
	}
	public EnrrolTest findEnTestProcess(String userId)
	{
		return enrollTestDao.findEnTestProcess(userId);
	}
	
	public void completeExpiredTest(String userId) {
		List<EnrrolTest> enrollTests = enrollTestDao.findAll();
		int timeTest = 40*60; 
		enrollTests.forEach(enrollTest -> {
			if (enrollTest.getUsers().getUserId().equals(userId)) {
				Date currentDate = new Date(System.currentTimeMillis());
				Date enrollmentDate = enrollTest.getEnrrollmentDate();
				Date endingEnrollmentDate = new Date(enrollmentDate.getTime() + timeTest*1000);
				System.out.println(endingEnrollmentDate);
				if (currentDate.after(endingEnrollmentDate) && enrollTest.getScore() < 0) {
					completeTest(enrollTest.getEnrrolId());
				}
			}
		});
	}
}
