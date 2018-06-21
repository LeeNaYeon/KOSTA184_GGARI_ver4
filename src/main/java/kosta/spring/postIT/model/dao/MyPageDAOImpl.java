package kosta.spring.postIT.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kosta.spring.postIT.model.dto.CourseDTO;
import kosta.spring.postIT.model.dto.CourseDateDTO;
import kosta.spring.postIT.model.dto.CourseRegistDTO;
import kosta.spring.postIT.model.dto.InterestedDTO;
import kosta.spring.postIT.model.dto.MenteeDTO;
import kosta.spring.postIT.model.dto.PaymentDTO;
import kosta.spring.postIT.model.dto.TestProblemSolutionDTO;

@Repository
public class MyPageDAOImpl implements MyPageDAO {

	@Autowired
	SqlSession session;
	
	
	String courseCode;
	
	@Override
	public List<TestProblemSolutionDTO> selectProblems(String codeNum) {
		
		List<TestProblemSolutionDTO> list = session.selectList("myPageMapper.selectProblems",codeNum);
		
		
		return list;
	}

	@Override
	public int courseInsert(CourseDTO courseDTO) {
		int result =0;
		result += session.insert("myPageMapper.courseInsert", courseDTO);
		courseCode = session.selectOne("myPageMapper.getCourseCode");
		return result;
	}

	@Override
	public MenteeDTO selectMento(String userId) {
		MenteeDTO menteeDTO = session.selectOne("myPageMapper.memberInfoCollect", userId);
		return menteeDTO;
	}

	@Override
	public int courseDayInsert(String day) {
		
		CourseDateDTO courseDayDTO = new CourseDateDTO(courseCode,day);
				
		return session.insert("myPageMapper.courseDayInsert", courseDayDTO);
	}

	@Override
	public int interestUpdate(InterestedDTO interestedDTO) {
		// TODO Auto-generated method stub
		return session.update("myPageMapper.userInterUpdate",interestedDTO);
	}

	@Override
	public int memberUpdate(MenteeDTO menteeDTO) {
		return session.update("myPageMapper.userInfoUpdate", menteeDTO);
	}

	@Override
	public int insertPayment(PaymentDTO paymentDTO) {
		return session.insert("myPageMapper.paymentInsert", paymentDTO);
	}

	@Override
	public String getPayCode() {
		// TODO Auto-generated method stub
		return session.selectOne("myPageMapper.getRecentPayCode");
	}

	@Override
	public int insertCourseRegist(CourseRegistDTO courseRegistDTO) {
		return session.insert("myPageMapper.courseRegistInsert", courseRegistDTO);
	}

}
