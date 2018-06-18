package kosta.spring.postIT.model.service;

import kosta.spring.postIT.model.dto.ApplicantDTO;
import kosta.spring.postIT.model.dto.InterestedDTO;
import kosta.spring.postIT.model.dto.MenteeDTO;
import kosta.spring.postIT.model.dto.MentoDTO;


public interface MemberService {

	/**
	 * 회원가입시 멘토/멘티로 가입하기 모두 insertMentee로 진입(관리자 승인후 멘토로 승급하기때문에)
	 * @param 멘티에 대한 내용을 menteeDTO,interestedDTO 형식으로 받음
	 * @return 성공여부를 가지고 controller로 이동
	 */
	int insertMentee(MenteeDTO menteeDTO,InterestedDTO interestedDTO);
	
	/**
	 * 멘토로 가입시 주력분야 추가
	 * @param 멘토에 대한 내용을 menteeDTO,applicantDTO형식으로 받음
	 * @return 회원가입이 되면 메인페이지로 이동
	 */	
	int insertMento(MenteeDTO menteeDTO,ApplicantDTO applicantDTO);
	
	/**
	 * 회원가입시 id 중복체크
	 */	
	String idcheck(String userId);
	
	/**
	 * main화면 누적 멘티수
	 * */
	int selectCountMentee(MenteeDTO menteeDTO);
	
	/**
	 * main화면 누적 멘토수
	 * */
	int selectCountMento(MentoDTO mentoDTO);
	

}