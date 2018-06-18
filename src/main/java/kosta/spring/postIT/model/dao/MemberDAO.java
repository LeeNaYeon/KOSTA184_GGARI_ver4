package kosta.spring.postIT.model.dao;

import kosta.spring.postIT.model.dto.ApplicantDTO;
import kosta.spring.postIT.model.dto.CourseDTO;
import kosta.spring.postIT.model.dto.InterestedDTO;
import kosta.spring.postIT.model.dto.MenteeDTO;
import kosta.spring.postIT.model.dto.MentoDTO;
import kosta.spring.postIT.model.dto.MentoReputationDTO;

public interface MemberDAO {
	
	/**
	 * 회원가입시 멘토/멘티로 가입하기 모두 insertMentee로 진입(관리자 승인후 멘토로 승급하기때문에)
	 */
	int insertMentee(MenteeDTO menteeDTO);
	
	/**
	 * 멘티로 가입시 관심분야 추가
	 */	
	int insertMenteeInter(InterestedDTO interestedDTO);
	
	/**
	 * 회원가입시 id 중복체크
	 */	
	int idcheck(String userId);
	
	/**
	 * 멘토로 가입시 주력분야 추가
	 */	
	int insertMento(ApplicantDTO applicantDTO);
	
	/**
	 * 권한부여
	 */	
	int insertAuthority(String userId);
	
	/**
	 * 로그인시 사용
	 */	
	MenteeDTO selectMemberById(String userId);
	
	/**
	 * 누적 멘티 수 조회
	 * */
	int selectCountMentee(MenteeDTO menteeDTO);
	
	/**
	 * 누적 멘토 수 조회
	 * */
	int selectCountMento(MentoDTO mentoDTO);
	
	/**
	 * 누적 스터디 수 조회
	 * */
	int selectCountCourse(CourseDTO courseDTO);
	
	/**
	 * 누적 리뷰 수 조회
	 * */
	int selectCountReputation(MentoReputationDTO mentoReputationDTO);
	
	/**
	 * main 수강생 강사 리뷰
	 * */
	MentoReputationDTO selectReputation(MentoReputationDTO mentoReputationDTO);
	

}
