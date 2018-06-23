package kosta.spring.postIT.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kosta.spring.postIT.model.dto.CourseDTO;
import kosta.spring.postIT.model.dto.CourseFavDTO;
import kosta.spring.postIT.model.dto.CourseRegistDTO;
import kosta.spring.postIT.model.dto.MenteeDTO;
import kosta.spring.postIT.model.dto.MentoReputationDTO;
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

	////////////////////////////////////////////////////////////////////////////
	/////////studySelect
	
	@RequestMapping("/myPage/study/select")
	public ModelAndView studySelect(String userId) {

		ModelAndView mv = new ModelAndView();

		List<CourseDTO> mentoList = myPageService.selectMentoStudy(userId);
		
		List<CourseRegistDTO> menteeList = myPageService.selectMentee(userId);

		// System.out.println(menteeList.get(0));

		mv.addObject("mentoList", mentoList);
		mv.addObject("menteeList", menteeList);

		mv.setViewName("mentee/myPage/select");

		return mv;
	}
	
	@RequestMapping("/myPage/study/delete")
	public String menteeStudyDelete(String userId, String courseCode) {

		int re = myPageService.menteeStudyDelete(userId, courseCode);

		int re2 = myPageService.menteeStudyCurrentUpdate(courseCode);

		return "forward:/myPage/study/select";

	}
	
	@RequestMapping("/myPage/favStudy/select")
	public ModelAndView favStudySelect(String userId) {

		ModelAndView mv = new ModelAndView();

		List<CourseFavDTO> favList = myPageService.favStudySelect(userId);

		mv.addObject("favList", favList);
		
		mv.setViewName("mentee/myPage/selectFav");

		return mv;
	}
	
	@RequestMapping("/myPage/favStudy/delete")
	public String favStudyDelete(String userId, String courseCode) {

		int re = myPageService.favStudyDelete(userId, courseCode);

		return "forward:/myPage/favStudy/select";

	}
	
	@RequestMapping("/myPage/exStudy/select") //강사님 설명 부분
	public ModelAndView exStudySelect(String userId  ) {

		ModelAndView mv = new ModelAndView();

		List<CourseDTO> mentoExList = myPageService.selectMentoEx(userId);

		List<CourseRegistDTO> menteeExList = myPageService.selectMenteeEx(userId);
		
		mv.addObject("mentoExList", mentoExList);//강좌정보
		mv.addObject("menteeExList", menteeExList);//my수강
		
		mv.setViewName("mentee/myPage/selectEx");

		return mv;
	}
		
	@RequestMapping("/myPage/exStudy/reviewInsertForm")
	public ModelAndView exStudyReviewInsertForm(String userId, String courseCode) {

		ModelAndView mv = new ModelAndView();

		CourseRegistDTO courseRegistDTO = myPageService.selectMenteeExByCourseCode(userId, courseCode);
			
		mv.addObject("courseRegistDTO", courseRegistDTO);
		mv.setViewName("mentee/myPage/reviewInsertForm");

		return mv;
	}
	
	@RequestMapping("/myPage/exStudy/reviewInsert") //똑같음
	public ModelAndView exStudyReviewInsert(MentoReputationDTO mentoReputationDTO)//userId
	{
		ModelAndView mv = new ModelAndView();
		
		int re = myPageService.insertReview(mentoReputationDTO);
		
		//MentoReputationDTO mentoReputationDTODB = service.selectReview(mentoReputationDTO);
		
		List<CourseDTO> mentoExList = myPageService.selectMentoEx(mentoReputationDTO.getRepWriter());

		List<CourseRegistDTO> menteeExList = myPageService.selectMenteeEx(mentoReputationDTO.getRepWriter());

		mv.addObject("userId", mentoReputationDTO.getRepWriter());
		mv.addObject("mentoExList", mentoExList);
		mv.addObject("menteeExList", menteeExList);
		
		mv.setViewName("mentee/myPage/selectEx");
		
		return mv;
	
	}
	
	
	
	
}
