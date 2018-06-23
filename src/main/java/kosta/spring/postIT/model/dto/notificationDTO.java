package kosta.spring.postIT.model.dto;

public class notificationDTO {

	private String notId;
	private String userId;
	private String senderName;
	private String notMessage;
	private String notDatetime;
	private int notIsRead;
	
	private MenteeDTO menteeDTO;
	
	public notificationDTO() {}
	
	public notificationDTO(String notId, String userId, String senderName, String notMessage, String notDatetime,
			int notIsRead) {
		super();
		this.notId = notId;
		this.userId = userId;
		this.senderName = senderName;
		this.notMessage = notMessage;
		this.notDatetime = notDatetime;
		this.notIsRead = notIsRead;
	}
	
	

	public MenteeDTO getMenteeDTO() {
		return menteeDTO;
	}

	public void setMenteeDTO(MenteeDTO menteeDTO) {
		this.menteeDTO = menteeDTO;
	}

	public String getNotId() {
		return notId;
	}

	public void setNotId(String notId) {
		this.notId = notId;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getSenderName() {
		return senderName;
	}

	public void setSenderName(String senderName) {
		this.senderName = senderName;
	}

	public String getNotMessage() {
		return notMessage;
	}

	public void setNotMessage(String notMessage) {
		this.notMessage = notMessage;
	}

	public String getNotDatetime() {
		return notDatetime;
	}

	public void setNotDatetime(String notDatetime) {
		this.notDatetime = notDatetime;
	}

	public int getNotIsRead() {
		return notIsRead;
	}

	public void setNotIsRead(int notIsRead) {
		this.notIsRead = notIsRead;
	}
	
	
	
	
	
}
