package kosta.spring.postIT.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kosta.spring.postIT.model.dto.CourseDTO;
import kosta.spring.postIT.model.dto.MenteeDTO;
import kosta.spring.postIT.model.dto.MentoReputationDTO;
import kosta.spring.postIT.model.service.CourseService;

@Controller
public class CourseController {
	
	@Autowired
	private CourseService courseService;

	@RequestMapping("/course/detail")
	public ModelAndView courseDetail(String courseCode, String userId) {
		
		ModelAndView mv = new ModelAndView();	
		
		//test용
		courseCode="c0017";
		//userId="jang";
		
		//스터디기본정보
		CourseDTO courseDTO = courseService.courseDetail(courseCode);				
		mv.addObject("courseDTO", courseDTO);
		
		//찜하기확인
		if(userId!=null) {
			String courseFav = courseService.courseFav(courseCode,userId);
			mv.addObject("courseFav", courseFav);
		}
		
		//결재하기확인
		if(userId!=null) {
			String coursePay = courseService.coursePay(courseCode,userId);
			mv.addObject("coursePay", coursePay);
		}		
		
		//스터디 요일 확인
		List<CourseDTO> courseDayList = courseService.courseDay(courseCode);

		mv.addObject("courseDayList", courseDayList);

		//강사리뷰
		List<MentoReputationDTO> courseReviewList = courseService.courseReview(courseCode);

		mv.addObject("courseReviewList", courseReviewList);
			
		mv.setViewName("common/courese/courseDetail"); // WEB-INF/views/common/course/courseDetail.jsp이동
		return mv;
		
	}
	
	//찜하기버튼용 Ajax삭제하기
	@RequestMapping("/course/favDelete")
	@ResponseBody
	public String favDelete(HttpServletRequest request) {

		return courseService.favDelete(request.getParameter("courseCode"),request.getParameter("id"));

	}
	
	//찜하기버튼용 Ajax삽입하기
	@RequestMapping("/course/favInsert")
	@ResponseBody
	public String favInsert(HttpServletRequest request) {
		
		return courseService.favInsert(request.getParameter("courseCode"),request.getParameter("id"));

	}
	
	
	
	
	
	
	
	
}
