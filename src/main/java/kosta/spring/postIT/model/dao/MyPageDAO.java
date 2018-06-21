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
	 * Database�� �����Ͽ� ������ �ҷ����ִ� �޼ҵ�
	 * @param codeNum ������ �ڵ带 String���� �޾ƿ��ش�.
	 * @return List�� ����� ��ȯ���ش�.
	 */
	public List<TestProblemSolutionDTO> selectProblems(String codeNum);
	
	/**
	 * course�� �߰��� ��, Mapper�� �������ִ� �޼ҵ�
	 * @param courseDTO Controller�������� �޾ƿ� ������ Service�� ���ļ� ���⿡ �����ߴ�.
	 * @return ����/���п��θ� int�� ��ȯ���ش�.
	 */
	public int courseInsert(CourseDTO courseDTO);
	
	/**
	 * ������ ���̽����� ����ID�� �ش��ϴ� ���� �����ͼ� �Ѱ��ش�.
	 * @param userId ���� �α��� �Ǿ� �ִ� ID���̴�.
	 * @return �ش� ȸ���� ������ �Ѱ��ش�
	 */
	public MenteeDTO selectMento(String userId);
	
	/**
	 * �ڽ��� �ش��ϴ� ���ϵ��� �־��ִ� �޼ҵ��̴�.
	 * @param day �ش��ϴ� �����̴�.
	 * @return ����/���п��θ� �������ش�.
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
