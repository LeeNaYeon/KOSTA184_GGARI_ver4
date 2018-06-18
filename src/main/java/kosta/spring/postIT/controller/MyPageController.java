package kosta.spring.postIT.controller;

import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartRequest;

import kosta.spring.postIT.model.dto.CourseDTO;
import kosta.spring.postIT.model.dto.MenteeDTO;
import kosta.spring.postIT.model.dto.TestProblemSolutionDTO;
import kosta.spring.postIT.model.service.MyPageService;



@Controller
public class MyPageController {

	@Autowired
	MyPageService myPageService;

	List<TestProblemSolutionDTO> testProblemList;

	@RequestMapping("/myPage/studyInsert/insertForm")
	public String studyInsertForm(Model model) {
         
		/**
		 * 여기서 아이디 값을 받아서 다오 가서 아이디 값 받아서 넘어온다. 아이디에 해당하는 정보들도 DTO에 넣어서 뷰로 뿌려준다. 정보는
		 * join으로 가져온다.
		 */
		System.out.println(1);
		String userId = "ayoung";
		MenteeDTO menteeDTO = myPageService.selectMember(userId);

		model.addAttribute("memberInfo", menteeDTO);
		
		return "mento/myPage/courseAdditionForm";
	}

	@RequestMapping("course/select/pay")
	public String paymentForm() {
		return "mentee/course/paymentForm";
	}

	@RequestMapping("myPage/profile/updateForm")
	public String infoUpdateForm(Model model) {
		String userId = "ayoung";
		MenteeDTO menteeDTO = myPageService.selectMember(userId);
		
		model.addAttribute("memberInfo", menteeDTO);

		return "mentee/myPage/infoModification";
	}

	@RequestMapping("course/levelTest/choice")
	public String levelTestChoice() {
		return "mentee/levelTest/levelTestChoice";
	}

	@RequestMapping("course/levelTest/content")
	public String levelTest(HttpServletRequest request, Model model) {

		String codeName = request.getParameter("classification");
		testProblemList = myPageService.selectProblem(codeName);
		System.out.println(codeName);
		System.out.println(testProblemList);
		for (TestProblemSolutionDTO dto : testProblemList) {
			System.out.println(dto.getTpsContent());
		}
		model.addAttribute("testProblemList", testProblemList);

		return "mentee/levelTest/levelTestContent";
	}

	@RequestMapping("course/levelTest/result")
	public String levelTestResult(HttpServletRequest request, Model model) {
		int count = 0;
		for (int j = 0; j < testProblemList.size(); j++) {
			if (testProblemList.get(j).getTpsSolution() == Integer
					.parseInt(request.getParameter(testProblemList.get(j).getTpsCode()))) {
				count++;
			}
		}
		model.addAttribute("result", count);

		return "mentee/levelTest/result";
	}

	@RequestMapping("myPage")
	public String mypPageMain() {
		return "mentee/myPage/myPageMain";
	}

	@RequestMapping("myPage/courseInsertConfirm")
	public String courseInsertConfirm(HttpServletRequest request, Model model) {

		String[] values = request.getParameterValues("classDay");

		String courseCode = null;
		String userId = "lny4011";
		String courseTitle = request.getParameter("classTitle");
		String courseTopGroup = request.getParameter("classification");
		String courseSubGroup = request.getParameter("classification");
		String courseDetail = request.getParameter("classDesc");
		String courseLevel = request.getParameter("classLevel");
		int courseRecruitMax = Integer.parseInt(request.getParameter("recruitTotal"));
		int courseRecruitCurrent = 0;
		String courseRecruitPerid = request.getParameter("recruitEndDate");
		String courseStartDate = request.getParameter("startDate");
		String courseEndDate = request.getParameter("endDate");
		String courseFrequency = String.valueOf(values.length);
		String courseStartTime = request.getParameter("classStartTime");
		String courseEndTime = request.getParameter("classEndTime");
		String courseLoc = request.getParameter("classLocation");
		int coursePrice = Integer.parseInt(request.getParameter("classPrice"));
		String courseUrl = request.getParameter("classUrl");
		String courseBackpic = request.getParameter("backGroundImg");

		CourseDTO dto = new CourseDTO(courseCode, userId, courseTitle, courseTopGroup, courseSubGroup, courseDetail,
				courseLevel, courseRecruitMax, courseRecruitCurrent, courseRecruitPerid, courseStartDate, courseEndDate,
				courseFrequency, courseStartTime, courseEndTime, courseLoc, coursePrice, courseUrl, courseBackpic);
		
		System.out.println(dto.toString());
		
		/*
		int maxSize = 30*1024*1024;
		String encoding = "UTF-8";
		
		ServletContext context = session.getServletContext();
		String saveDir = context.getRealPath("Upload");*/
		
		/*
		MultipartRequest multi = new MultipartRequest(request, saveDir, maxSize, encoding, new DefaultFileRenamePolicy());
		*/
		
		int result = myPageService.courseInsert(dto, values);
		model.addAttribute("result", result);

		return "mento/myPage/courseAdditionConfirm";
	}
	
	@RequestMapping("myPage/userUpdateResult")
	public String userUpdateResult(HttpServletRequest request,Model model) {
		
		String userName= request.getParameter("userName");
		String userPhone = request.getParameter("contact");
		String email = request.getParameter("email");
		String userId = request.getParameter("userId");
		String resume = request.getParameter("resume");
		
		String [] classes = request.getParameterValues("classification");
		
		
		
		return "mentee/myPage/modifiedResult";
	}

}
