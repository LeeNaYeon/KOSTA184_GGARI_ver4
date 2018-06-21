package kosta.spring.postIT.model.dto;

public class CourseRegistDTO {

	private String registCode;
	private String courseCode;
	private String payCode;
	private String userId;
	
	
	
	public String getRegistCode() {
		return registCode;
	}
	public void setRegistCode(String registCode) {
		this.registCode = registCode;
	}
	public CourseRegistDTO(String registCode, String courseCode, String payCode, String userId) {
		super();
		this.registCode = registCode;
		this.courseCode = courseCode;
		this.payCode = payCode;
		this.userId = userId;
	}
	public CourseRegistDTO(String courseCode, String payCode, String userId) {
		super();
		this.courseCode = courseCode;
		this.payCode = payCode;
		this.userId = userId;
	}
	public String getCourseCode() {
		return courseCode;
	}
	public void setCourseCode(String courseCode) {
		this.courseCode = courseCode;
	}
	public String getPayCode() {
		return payCode;
	}
	public void setPayCode(String payCode) {
		this.payCode = payCode;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	
	
	
}
