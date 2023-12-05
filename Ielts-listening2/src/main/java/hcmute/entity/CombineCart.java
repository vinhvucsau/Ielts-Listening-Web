package hcmute.entity;

public class CombineCart {
	Course course;
	String cartId;

	public CombineCart() {

	}

	public void setCartId(String cartId) {
		this.cartId = cartId;
	};

	public void setCourse(Course course) {
		this.course = course;
	}

	public String getCartId() {
		return cartId;
	}

	public Course getCourse() {
		return course;
	}
}
