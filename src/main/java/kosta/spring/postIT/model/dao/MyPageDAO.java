package kosta.spring.postIT.model.dao;

import java.util.List;

import kosta.spring.postIT.model.dto.CourseDTO;
import kosta.spring.postIT.model.dto.CourseRegistDTO;
import kosta.spring.postIT.model.dto.InterestedDTO;
import kosta.spring.postIT.model.dto.MenteeDTO;
import kosta.spring.postIT.model.dto.PaymentDTO;
import kosta.spring.postIT.model.dto.TestProblemSolutionDTO;

public interface MyPageDAO {
	
	/**
	 * Database와 연동하여 값들을 불러와주는 메소드
	 * @param codeNum 고유의 코드를 String으로 받아와준다.
	 * @return List로 목록을 반환해준다.
	 */
	public List<TestProblemSolutionDTO> selectProblems(String codeNum);
	
	/**
	 * course를 추가할 때, Mapper와 연결해주는 메소드
	 * @param courseDTO Controller에서부터 받아온 값들이 Service를 거쳐서 여기에 도착했다.
	 * @return 성공/실패여부를 int로 반환해준다.
	 */
	public int courseInsert(CourseDTO courseDTO);
	
	/**
	 * 데이터 베이스에서 유저ID에 해당하는 값을 가져와서 넘겨준다.
	 * @param userId 현재 로그인 되어 있는 ID값이다.
	 * @return 해당 회원의 정보를 넘겨준다
	 */
	public MenteeDTO selectMento(String userId);
	
	/**
	 * 코스에 해당하는 요일들을 넣어주는 메소드이다.
	 * @param day 해당하는 요일이다.
	 * @return 성공/실패여부를 리턴해준다.
	 */
	public int courseDayInsert(String day);
	
	/**
	 * 
	 * @param interests
	 * @return
	 */
	public int interestUpdate(InterestedDTO interestedDTO);
	
	/**
	 * 
	 * @param menteeDTO
	 * @return
	 */
	public int memberUpdate(MenteeDTO menteeDTO);
	
	/**
	 * 
	 * @param paymentDTO
	 * @return
	 */
	public int insertPayment(PaymentDTO paymentDTO);
	
	/**
	 * 
	 * @return
	 */
	public String getPayCode();
	
	/**
	 * 
	 * @param courseRegistDTO
	 * @return
	 */
	public int insertCourseRegist(CourseRegistDTO courseRegistDTO);
}
