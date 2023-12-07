package hcmute.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "Pay_Detail")
public class PayDetail implements Serializable{

	private static final long serialVersionUID = 1L;

	 @Id
	    @Column(name = "Pay_DetailId")
	    private String payDetailId;

	    @Column(name = "paymentId")
	    private String paymentId;

	    @Column(name = "user_courseId")
	    private String userCourseId;

	    // Constructors, getters, setters, and other annotations

	    @ManyToOne
	    @JoinColumn(name = "paymentId", referencedColumnName = "paymentId", insertable = false, updatable = false)
	    private Payment payment;

	    @ManyToOne
	    @JoinColumn(name = "user_courseId", referencedColumnName = "user_courseId", insertable = false, updatable = false)
	    private UserCourse userCourse;

		public PayDetail(String payDetailId, String paymentId, String userCourseId, Payment payment,
				UserCourse userCourse) {
			super();
			this.payDetailId = payDetailId;
			this.paymentId = paymentId;
			this.userCourseId = userCourseId;
			this.payment = payment;
			this.userCourse = userCourse;
		}

		public String getPayDetailId() {
			return payDetailId;
		}

		public void setPayDetailId(String payDetailId) {
			this.payDetailId = payDetailId;
		}

		public String getPaymentId() {
			return paymentId;
		}

		public void setPaymentId(String paymentId) {
			this.paymentId = paymentId;
		}

		public String getUserCourseId() {
			return userCourseId;
		}

		public void setUserCourseId(String userCourseId) {
			this.userCourseId = userCourseId;
		}

		public Payment getPayment() {
			return payment;
		}

		public void setPayment(Payment payment) {
			this.payment = payment;
		}

		public UserCourse getUserCourse() {
			return userCourse;
		}

		public void setUserCourse(UserCourse userCourse) {
			this.userCourse = userCourse;
		}

		public PayDetail() {
			super();
			// TODO Auto-generated constructor stub
		}

		@Override
		public String toString() {
			return "PayDetail [payDetailId=" + payDetailId + ", paymentId=" + paymentId + ", userCourseId="
					+ userCourseId + ", payment=" + payment + ", userCourse=" + userCourse + "]";
		}
	    
	    
}
