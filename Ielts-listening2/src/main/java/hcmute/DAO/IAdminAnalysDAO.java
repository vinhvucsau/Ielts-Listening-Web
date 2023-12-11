package hcmute.DAO;

import java.util.List;

import hcmute.entity.Course;
import hcmute.entity.User;

public interface IAdminAnalysDAO {
	Long countUser();
	Long countCourse();
	Long sumRevenue();
	Long costWithMonth1();
	Long costWithMonth2();
	Long costWithMonth3();
	Long costWithMonth4();
	Long costWithMonth5();
	Long costWithMonth6();
	Long costWithMonth7();
	Long costWithMonth8();
	Long costWithMonth9();
	Long costWithMonth10();
	Long costWithMonth11();
	Long costWithMonth12();
	List<String> userIdDescreaseCost();
	List<Long> costDecrease();
	Long countCourseByUserId(String userId);
	Long countRatingByUserId(String userId);
	User findUserByUserId(String userId);
	Long sumCostByUserId(String userId);
	List<Course> listCourseOrderByTime();
}
