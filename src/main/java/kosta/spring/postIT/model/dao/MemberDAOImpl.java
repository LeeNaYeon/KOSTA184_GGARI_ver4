package kosta.spring.postIT.model.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kosta.spring.postIT.model.dto.ApplicantDTO;
import kosta.spring.postIT.model.dto.CourseDTO;
import kosta.spring.postIT.model.dto.CrAsgnDTO;
import kosta.spring.postIT.model.dto.InterestedDTO;
import kosta.spring.postIT.model.dto.MenteeDTO;
import kosta.spring.postIT.model.dto.MentoDTO;
import kosta.spring.postIT.model.dto.MentoReputationDTO;

@Repository
public class MemberDAOImpl implements MemberDAO {

	@Autowired
	private SqlSession session;
	

	@Override
	public int insertMentee(MenteeDTO menteeDTO) {
		
		return session.insert("memberMapper.insertMentee",menteeDTO);
	}

	@Override
	public int insertMenteeInter(InterestedDTO interestedDTO) {
		
		return session.insert("memberMapper.insertInterested",interestedDTO);
	}


	@Override
	public int idcheck(String userId) {
		return  session.selectOne("memberMapper.idcheck",userId);
	}


	@Override
	public int insertMento(ApplicantDTO applicantDTO) {
		return session.insert("memberMapper.insertApplicant",applicantDTO);
	}


	@Override
	public int insertAuthority(String userId) {
		
		return session.insert("memberMapper.insertAuthority",userId);
	}


	@Override
	public MenteeDTO selectMemberById(String userId) {
		
		return session.selectOne("memberMapper.selectMemberById", userId);
	}

	@Override
	public int selectCountMentee(MenteeDTO menteeDTO) {
		
		return session.selectOne("memberMapper.selectCountMentee",menteeDTO);
	}

	@Override
	public int selectCountMento(MentoDTO mentoDTO) {
		
		return session.selectOne("memberMapper.selectCountMento",mentoDTO);
	}
	
	@Override
	public int selectCountCourse(CourseDTO courseDTO) {
		return session.selectOne("memberMapper.selectCountCourse", courseDTO);
	}
	
	@Override
	public int selectCountReputation(MentoReputationDTO mentoReputationDTO) {
		return session.selectOne("memberMapper.selectCountReputation", mentoReputationDTO);
	}

	@Override
	public MentoReputationDTO selectReputation(MentoReputationDTO mentoReputationDTO) {
		return null;
	}
	
	

}
