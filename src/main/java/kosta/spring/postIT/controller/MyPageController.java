package kosta.spring.postIT.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import kosta.spring.postIT.model.dto.CourseApplyDTO;
import kosta.spring.postIT.model.dto.CourseDTO;
import kosta.spring.postIT.model.dto.CourseFavDTO;
import kosta.spring.postIT.model.dto.CourseRegistDTO;
import kosta.spring.postIT.model.dto.InterestedDTO;
import kosta.spring.postIT.model.dto.MenteeDTO;
import kosta.spring.postIT.model.dto.MentoDTO;
import kosta.spring.postIT.model.dto.MentoReputationDTO;
import kosta.spring.postIT.model.dto.PaymentDTO;
import kosta.spring.postIT.model.dto.TestProblemSolutionDTO;
import kosta.spring.postIT.model.service.MyPageService;

@Controller
public class MyPageController {

	@Autowired
	MyPageService myPageService;

	List<TestProblemSolutionDTO> testProblemList;

	private final String savePath = "C:\\edu_j\\springworkspace\\springUserBoardTilesSaveFolder";

	@RequestMapping("/myPage/studyInsert/insertForm")
	public String studyInsertForm(Model model) throws Exception{

		/**
		 * 여기서 아이디 값을 받아서 다오 가서 아이디 값 받아서 넘어온다. 아이디에 해당하는 정보들도 DTO에 넣어서 뷰로 뿌려준다. 정보는
		 * join으로 가져온다.
		 */
		String userId = null;

		// 회원정보 수정위해 Spring Security 세션 회원정보를 반환받는다
		Object obj = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		if (obj instanceof MenteeDTO) {
			MenteeDTO pvo = (MenteeDTO) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
			userId = pvo.getUserId();
		}

		
		MenteeDTO menteeDTO = myPageService.selectMember(userId);
		MentoDTO mentoDTO = myPageService.getMentoMajor(userId);

		
		model.addAttribute("majorList", mentoDTO);
		model.addAttribute("memberInfo", menteeDTO);

		return "mento/myPage/courseAdditionForm";
	}

	@RequestMapping("course/select/pay")
	public String paymentForm() {
		return "mentee/course/paymentForm";
	}

	@RequestMapping("myPage/profile/updateForm")
	public String infoUpdateForm(Model model) {
		String userId = null;

		// 회원정보 수정위해 Spring Security 세션 회원정보를 반환받는다
		Object obj = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		if (obj instanceof MenteeDTO) {
			MenteeDTO pvo = (MenteeDTO) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
			userId = pvo.getUserId();
		}
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
	public String mypPageMain(Model model) {

		return "mentee/myPage/myPageMain";
	}

	@RequestMapping("myPage/courseInsertConfirm")
	public String courseInsertConfirm(HttpServletRequest request, Model model, CourseDTO courseDTO)
			throws Exception {
		MultipartFile file = courseDTO.getFile();
		if (courseDTO.getFile().getSize() > 0) {
			courseDTO.setCourseBackpic(file.getOriginalFilename());

			file.transferTo(new File(savePath + "/" + file.getOriginalFilename()));

		}
		String userId=null;
		Object obj = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		if (obj instanceof MenteeDTO) {
			MenteeDTO pvo = (MenteeDTO) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
			userId = pvo.getUserId();
		}
		String[] values = request.getParameterValues("classDay");
		courseDTO.setCourseFrequency(String.valueOf(values.length));
		courseDTO.setUserId(userId);
		/*
		 * CourseApplyDTO(String userId, String courseTitle, String courseSubGroup,
		 * String courseDetail, String courseLevel, int courseRecruitMax, String
		 * courseRecruitPerid, String courseStartDate, String courseEndDate, String
		 * courseFrequency, String courseStartTime, String courseEndTime, String
		 * courseLoc, int coursePrice, String courseUrl, String courseBackpic)
		 */

		int result = myPageService.courseInsert(courseDTO, values);
		model.addAttribute("result", result);

		return "mento/myPage/courseAdditionConfirm";
	}
	
	@RequestMapping("myPage/userUpdateResult")
	public String userUpdateResult(HttpServletRequest request, Model model, MenteeDTO menteeDTO) throws Exception {

		MultipartFile file = menteeDTO.getFile();

		/*
		 * String userId = request.getParameter("userId"); String userName =
		 * request.getParameter("userName"); String userPhone =
		 * request.getParameter("contact"); String email =
		 * request.getParameter("email");
		 */

		InterestedDTO interestedDTO = null;
		System.out.println(menteeDTO.toString());

		if (menteeDTO.getFile().getSize() > 0) {
			menteeDTO.setUserPhoto(file.getOriginalFilename());

			file.transferTo(new File(savePath + "/" + file.getOriginalFilename()));

		}

		String[] classes = request.getParameterValues("classification");
		if (classes[0] != null) {
			String inter1 = classes[0];
			interestedDTO = new InterestedDTO(menteeDTO.getUserId(), inter1);
			if (classes[1] != null) {
				String inter2 = classes[1];
				interestedDTO = new InterestedDTO(menteeDTO.getUserId(), inter1, inter2);
				if (classes[2] != null) {
					String inter3 = classes[2];
					interestedDTO = new InterestedDTO(menteeDTO.getUserId(), inter1, inter2, inter3);
				}
			}
		}

		myPageService.updateMenteeUserInfo(menteeDTO);

		myPageService.updateInterested(interestedDTO);

		model.addAttribute("MenteeDTO", menteeDTO);

		return "mentee/myPage/modifiedResult";
	}

	@RequestMapping("course/payConfirm")
	public String payConfirm(HttpServletRequest request, Model model) {

		String userId = request.getParameter("id");
		String courseCode = request.getParameter("courseCode");
		String paidAmount = request.getParameter("paidAmount");
		String paidMethod = request.getParameter("paidMethod");

		/**
		 * payment테이블에 데이터 추가.
		 */
		PaymentDTO paymentDTO = new PaymentDTO(paidMethod, paidAmount);
		int result = myPageService.insertPayment(paymentDTO);

		/**
		 * course_regist에 데이터 추가.
		 * 
		 */
		String payCode = myPageService.getPayCode();
		CourseRegistDTO courseRegistDTO = new CourseRegistDTO(courseCode, payCode, userId);
		myPageService.insertCourseRegist(courseRegistDTO);
		return "main/mainpage/index";
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
