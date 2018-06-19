package kosta.spring.postIT.model.service;

import java.util.List;

import kosta.spring.postIT.model.dto.CourseDTO;
import kosta.spring.postIT.model.dto.MenteeDTO;
import kosta.spring.postIT.model.dto.TestProblemSolutionDTO;

public interface MyPageService {

	/**
	 * 테스트보기 클릭했을 때, 문제들을 불러와주는 메소드
	 * @param codeNum 소주제에 해당하는 코드를 String값으로 받아온다.
	 * @return DAO에서 뽑아진 값들을 List의 형식으로 리턴해준다.
	 */
	public List<TestProblemSolutionDTO> selectProblem(String codeNum);
	
	/**
	 * 마이페이지에서 강좌개설을 클릭했을 때, 강좌를 추가해주는 메소드.
	 * @param courseDTO view(courseAddition.jsp에서 받아온 값들), List는 요일을 String 값으로 배열에 담아 넘겨준다
	 * @return 성공/실패 여부를 int값으로 리턴해준다.
	 */
	public int courseInsert(CourseDTO courseDTO,String[] list);
	
	/**
	 * 저장된 회원정보를 불러와 주는 메소드.
	 * @return 저장된 정보를 넘겨준다.
	 * @param userId 세션 혹은 Spring Security에 저장되어 있는 유저ID를 넘겨준다.
	 * 		  
	 */
	public MenteeDTO selectMember(String userId);
	
	/**
	 * 멘토의 정보 중 관심분야를 배열로 받는 메소드
	 * @param classes 관심분야가 배열로 넘어온다.
	 * @return 성공/실패 여부를 리턴으로 넘겨진다.
	 */
	public int updateInterested(String[] classes);
	
	/**
	 * 멘티의 개인정보 업데이트를 위한 메소드
	 * @param menteeDTO 정보를 저장한 DTO
	 * @return 성공/실패여부를 넘겨준다.
	 */
	public int updateMenteeUserInfo(MenteeDTO menteeDTO);
	
}
