package kosta.spring.postIT.model.dao;

import kosta.spring.postIT.model.dto.ApplicantDTO;
import kosta.spring.postIT.model.dto.CourseDTO;
import kosta.spring.postIT.model.dto.InterestedDTO;
import kosta.spring.postIT.model.dto.MenteeDTO;
import kosta.spring.postIT.model.dto.MentoDTO;
import kosta.spring.postIT.model.dto.MentoReputationDTO;

public interface MemberDAO {
	
	/**
	 * ȸ�����Խ� ����/��Ƽ�� �����ϱ� ��� insertMentee�� ����(������ ������ ����� �±��ϱ⶧����)
	 */
	int insertMentee(MenteeDTO menteeDTO);
	
	/**
	 * ��Ƽ�� ���Խ� ���ɺо� �߰�
	 */	
	int insertMenteeInter(InterestedDTO interestedDTO);
	
	/**
	 * ȸ�����Խ� id �ߺ�üũ
	 */	
	int idcheck(String userId);
	
	/**
	 * ����� ���Խ� �ַºо� �߰�
	 */	
	int insertMento(ApplicantDTO applicantDTO);
	
	/**
	 * ���Ѻο�
	 */	
	int insertAuthority(String userId);
	
	/**
	 * �α��ν� ���
	 */	
	MenteeDTO selectMemberById(String userId);
	
	/**
	 * ���� ��Ƽ �� ��ȸ
	 * */
	int selectCountMentee(MenteeDTO menteeDTO);
	
	/**
	 * ���� ���� �� ��ȸ
	 * */
	int selectCountMento(MentoDTO mentoDTO);
	
	/**
	 * ���� ���͵� �� ��ȸ
	 * */
	int selectCountCourse(CourseDTO courseDTO);
	
	/**
	 * ���� ���� �� ��ȸ
	 * */
	int selectCountReputation(MentoReputationDTO mentoReputationDTO);
	
	/**
	 * main ������ ���� ����
	 * */
	MentoReputationDTO selectReputation(MentoReputationDTO mentoReputationDTO);
	

}
