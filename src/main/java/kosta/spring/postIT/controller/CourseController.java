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
		
		//test��
		courseCode="c0017";
		//userId="jang";
		
		//���͵�⺻����
		CourseDTO courseDTO = courseService.courseDetail(courseCode);				
		mv.addObject("courseDTO", courseDTO);
		
		//���ϱ�Ȯ��
		if(userId!=null) {
			String courseFav = courseService.courseFav(courseCode,userId);
			mv.addObject("courseFav", courseFav);
		}
		
		//�����ϱ�Ȯ��
		if(userId!=null) {
			String coursePay = courseService.coursePay(courseCode,userId);
			mv.addObject("coursePay", coursePay);
		}		
		
		//���͵� ���� Ȯ��
		List<CourseDTO> courseDayList = courseService.courseDay(courseCode);

		mv.addObject("courseDayList", courseDayList);

		//���縮��
		List<MentoReputationDTO> courseReviewList = courseService.courseReview(courseCode);

		mv.addObject("courseReviewList", courseReviewList);
			
		mv.setViewName("common/courese/courseDetail"); // WEB-INF/views/common/course/courseDetail.jsp�̵�
		return mv;
		
	}
	
	//���ϱ��ư�� Ajax�����ϱ�
	@RequestMapping("/course/favDelete")
	@ResponseBody
	public String favDelete(HttpServletRequest request) {

		return courseService.favDelete(request.getParameter("courseCode"),request.getParameter("id"));

	}
	
	//���ϱ��ư�� Ajax�����ϱ�
	@RequestMapping("/course/favInsert")
	@ResponseBody
	public String favInsert(HttpServletRequest request) {
		
		return courseService.favInsert(request.getParameter("courseCode"),request.getParameter("id"));

	}
	
	
	
	
	
	
	
	
}
