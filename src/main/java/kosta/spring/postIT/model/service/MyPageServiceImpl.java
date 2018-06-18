package kosta.spring.postIT.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kosta.spring.postIT.model.dao.MyPageDAO;
import kosta.spring.postIT.model.dto.CourseDTO;
import kosta.spring.postIT.model.dto.MenteeDTO;
import kosta.spring.postIT.model.dto.TestProblemSolutionDTO;

@Service
public class MyPageServiceImpl implements MyPageService {

	@Autowired
	MyPageDAO myPageDAO;
	
	@Override
	public List<TestProblemSolutionDTO> selectProblem(String codeNum) {
		List<TestProblemSolutionDTO> list = myPageDAO.selectProblems(codeNum);
		
		return list;
	}

	@Override
	public int courseInsert(CourseDTO courseDTO,String[] list) {
		
		int result = 0;
		result += myPageDAO.courseInsert(courseDTO);
		
		for(String day:list) {
			result += myPageDAO.courseDayInsert(day);
		}
		
		return result;
	}

	@Override
	public MenteeDTO selectMember(String userId) {
		return myPageDAO.selectMento(userId);
	}

	@Override
	public int updateInterested(String[] classes) {
		for(String interests:classes) {
			myPageDAO.interestUpdate(interests);
		}
		return 0;
	}

	@Override
	public int updateMenteeUserInfo(MenteeDTO menteeDTO) {
		
		return myPageDAO.memberUpdate(menteeDTO);
	}

}
