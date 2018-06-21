package kosta.spring.postIT.controller;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import kosta.spring.postIT.model.dto.CourseDTO;
import kosta.spring.postIT.model.dto.CourseRegistDTO;
import kosta.spring.postIT.model.dto.InterestedDTO;
import kosta.spring.postIT.model.dto.MenteeDTO;
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
	public String studyInsertForm(Model model) {

		/**
		 * 여기서 아이디 값을 받아서 다오 가서 아이디 값 받아서 넘어온다. 아이디에 해당하는 정보들도 DTO에 넣어서 뷰로 뿌려준다. 정보는
		 * join으로 가져온다.
		 */
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
	public String courseInsertConfirm(HttpServletRequest request, Model model, CourseDTO courseDTO) throws Exception {
		System.out.println(courseDTO.toString());
		MultipartFile file = courseDTO.getFile();
		System.out.println(courseDTO.getFile().getSize());
		if(courseDTO.getFile().getSize()>0) {
			courseDTO.setCourseBackpic(file.getOriginalFilename());

			file.transferTo(new File(savePath+"/"+file.getOriginalFilename()));

		}
		String[] values = request.getParameterValues("classDay");
		courseDTO.setCourseFrequency(String.valueOf(values.length));
		
		String courseCode = null;
		String userId = "lny4011";
		
		
/*
		int result = myPageService.courseInsert(courseDTO, values);
		model.addAttribute("result", result);*/

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
		
		InterestedDTO interestedDTO=null;
		System.out.println(menteeDTO.toString());
		
		if(menteeDTO.getFile().getSize()>0) {
			menteeDTO.setUserPhoto(file.getOriginalFilename());

			file.transferTo(new File(savePath+"/"+file.getOriginalFilename()));

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

}
