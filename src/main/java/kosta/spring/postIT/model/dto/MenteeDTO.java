package kosta.spring.postIT.model.dto;

import java.util.List;

public class MenteeDTO {

		private String userId;
		private String userPwd;
		private String userName;
		private String userPhone;
		private String userEmail;
		private String userPhoto;
		
		private List<CrAsgnDTO> asgns;
		private List<CrNoticeDTO> notices;
		
		public MenteeDTO() {} 
		
		public MenteeDTO(String userId, String userPwd, String userName, String userPhone, String userEmail,
				String userPhoto) {
			super();
			this.userId = userId;
			this.userPwd = userPwd;
			this.userName = userName;
			this.userPhone = userPhone;
			this.userEmail = userEmail;
			this.userPhoto = userPhoto;
		}
		public String getUserId() {
			return userId;
		}
		public void setUserId(String userId) {
			this.userId = userId;
		}
		public String getUserPwd() {
			return userPwd;
		}
		public void setUserPwd(String userPwd) {
			this.userPwd = userPwd;
		}
		public String getUserName() {
			return userName;
		}
		public void setUserName(String userName) {
			this.userName = userName;
		}
		public String getUserPhone() {
			return userPhone;
		}
		public void setUserPhone(String userPhone) {
			this.userPhone = userPhone;
		}
		public String getUserEmail() {
			return userEmail;
		}
		public void setUserEmail(String userEmail) {
			this.userEmail = userEmail;
		}
		public String getUserPhoto() {
			return userPhoto;
		}
		public void setUserPhoto(String userPhoto) {
			this.userPhoto = userPhoto;
		}

		public List<CrAsgnDTO> getAsgns() {
			return asgns;
		}

		public void setAsgns(List<CrAsgnDTO> asgns) {
			this.asgns = asgns;
		}

		public List<CrNoticeDTO> getNotices() {
			return notices;
		}

		public void setNotices(List<CrNoticeDTO> notices) {
			this.notices = notices;
		}
		
		
		
}
