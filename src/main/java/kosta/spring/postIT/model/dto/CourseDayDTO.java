package kosta.spring.postIT.model.dto;

public class CourseDayDTO {

	private String courseDayCode;
	private String courseCode;
	private String day;
	
	
	public CourseDayDTO() {};
	
	public CourseDayDTO(String courseCode, String day) {
		super();
		this.courseCode = courseCode;
		this.day = day;
	}
	public String getCourseDayCode() {
		return courseDayCode;
	}
	public void setCourseDayCode(String courseDayCode) {
		this.courseDayCode = courseDayCode;
	}
	public String getCourseCode() {
		return courseCode;
	}
	public void setCourseCode(String courseCode) {
		this.courseCode = courseCode;
	}
	public String getDay() {
		return day;
	}
	public void setDay(String day) {
		this.day = day;
	}
	
	
}
