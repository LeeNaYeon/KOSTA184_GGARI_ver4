package kosta.spring.postIT.model.dto;

public class ApplicantDTO {

	private String userId;
	private String applicantResume;
	private String applicantMajor1;
	private String applicantMajor2;
	private String applicantMajor3;
	private String applicantStatus;
	
	public ApplicantDTO() {}
	
	public ApplicantDTO(String userId, String applicantResume, String applicantMajor1, String applicantMajor2,
			String applicantMajor3, String applicantStatus) {
		super();
		this.userId = userId;
		this.applicantResume = applicantResume;
		this.applicantMajor1 = applicantMajor1;
		this.applicantMajor2 = applicantMajor2;
		this.applicantMajor3 = applicantMajor3;
		this.applicantStatus = applicantStatus;
	}
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getApplicantResume() {
		return applicantResume;
	}
	public void setApplicantResume(String applicantResume) {
		this.applicantResume = applicantResume;
	}
	public String getApplicantMajor1() {
		return applicantMajor1;
	}
	public void setApplicantMajor1(String applicantMajor1) {
		this.applicantMajor1 = applicantMajor1;
	}
	public String getApplicantMajor2() {
		return applicantMajor2;
	}
	public void setApplicantMajor2(String applicantMajor2) {
		this.applicantMajor2 = applicantMajor2;
	}
	public String getApplicantMajor3() {
		return applicantMajor3;
	}
	public void setApplicantMajor3(String applicantMajor3) {
		this.applicantMajor3 = applicantMajor3;
	}
	public String getApplicantStatus() {
		return applicantStatus;
	}
	public void setApplicantStatus(String applicantStatus) {
		this.applicantStatus = applicantStatus;
	}
	
	
	
	
	
}
