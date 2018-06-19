package kosta.spring.postIT.model.service;

import java.util.List;

import kosta.spring.postIT.model.dto.CourseDTO;
import kosta.spring.postIT.model.dto.MenteeDTO;
import kosta.spring.postIT.model.dto.TestProblemSolutionDTO;

public interface MyPageService {

	/**
	 * �׽�Ʈ���� Ŭ������ ��, �������� �ҷ����ִ� �޼ҵ�
	 * @param codeNum �������� �ش��ϴ� �ڵ带 String������ �޾ƿ´�.
	 * @return DAO���� �̾��� ������ List�� �������� �������ش�.
	 */
	public List<TestProblemSolutionDTO> selectProblem(String codeNum);
	
	/**
	 * �������������� ���°����� Ŭ������ ��, ���¸� �߰����ִ� �޼ҵ�.
	 * @param courseDTO view(courseAddition.jsp���� �޾ƿ� ����), List�� ������ String ������ �迭�� ��� �Ѱ��ش�
	 * @return ����/���� ���θ� int������ �������ش�.
	 */
	public int courseInsert(CourseDTO courseDTO,String[] list);
	
	/**
	 * ����� ȸ�������� �ҷ��� �ִ� �޼ҵ�.
	 * @return ����� ������ �Ѱ��ش�.
	 * @param userId ���� Ȥ�� Spring Security�� ����Ǿ� �ִ� ����ID�� �Ѱ��ش�.
	 * 		  
	 */
	public MenteeDTO selectMember(String userId);
	
	/**
	 * ������ ���� �� ���ɺо߸� �迭�� �޴� �޼ҵ�
	 * @param classes ���ɺо߰� �迭�� �Ѿ�´�.
	 * @return ����/���� ���θ� �������� �Ѱ�����.
	 */
	public int updateInterested(String[] classes);
	
	/**
	 * ��Ƽ�� �������� ������Ʈ�� ���� �޼ҵ�
	 * @param menteeDTO ������ ������ DTO
	 * @return ����/���п��θ� �Ѱ��ش�.
	 */
	public int updateMenteeUserInfo(MenteeDTO menteeDTO);
	
}
