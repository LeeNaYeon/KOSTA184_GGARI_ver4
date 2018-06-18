package kosta.spring.postIT.controller;

import java.io.File;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import kosta.spring.postIT.model.dto.ApplicantDTO;
import kosta.spring.postIT.model.dto.InterestedDTO;
import kosta.spring.postIT.model.dto.MenteeDTO;
import kosta.spring.postIT.model.service.MemberService;

@Controller
public class MemberController {

	@Autowired
	MemberService memberService;
	
	/**
	 * 멘티가입하기
	 * @param 멘티에 대한 내용을 menteeDTO,interestedDTO 형식으로 받음
	 * @return 회원가입이 되면 메인페이지로 이동
	 */
	@RequestMapping(value="/join/Mentee",produces="text/html;charset=UTF-8")
	public String insertMentee(MenteeDTO menteeDTO,InterestedDTO interestedDTO) {
		
		//System.out.println("getUserId : "+menteeDTO.getUserId());
		
		memberService.insertMentee(menteeDTO,interestedDTO);
		
		return"redirect:/";
	}
	
	/**
	 * 멘토가입하기
	 * @param 멘토에 대한 내용을 menteeDTO,applicantDTO,file 형식으로 받음(file은 이력서받을때 사용)
	 * @return 회원가입이 되면 메인페이지로 이동
	 */
	@RequestMapping("/join/Mento")
	public String insertMento(MenteeDTO menteeDTO, ApplicantDTO applicantDTO, MultipartFile file, HttpSession session) {
		
		String path = session.getServletContext().getRealPath("/WEB-INF/save/");
		
		String fileName = file.getOriginalFilename();
		//System.out.println("fileName  : "+fileName);
		try {
			file.transferTo(new File(path+"/"+fileName)); //파일업로드 완료
		} catch (Exception e) {
			e.printStackTrace();
		} 
		
		applicantDTO = new ApplicantDTO(applicantDTO.getUserId(),fileName,applicantDTO.getApplicantMajor1()
				,applicantDTO.getApplicantMajor2(),applicantDTO.getApplicantMajor3(),"0" );
		
		memberService.insertMento(menteeDTO,applicantDTO);
		
		return"redirect:/";
	}
	
	/**
	 * 회원가입시 id 중복체크
	 * @param AJAX를 사용하여 id 확인
	 * @return 비교가 끝나면 AJAX로 돌아감
	 */
	@RequestMapping("/idcheckAjax")
	@ResponseBody
	public String idCheckAjax(HttpServletRequest request) {
		//System.out.println("idcheckAjax");
		return memberService.idcheck(request.getParameter("id"));
	}
	
	/**
	 * 누적 확인
	 * */
	/*@RequestMapping("/countTest")
	public int countTest1(MenteeDTO menteeDTO) {
		return memberService.selectCountMentee(menteeDTO);
	}*/
	
	@RequestMapping("/countTest")
	public ModelAndView countTest(MenteeDTO menteeDTO) {
		ModelAndView mv = new ModelAndView();
		int MenteeCount = memberService.selectCountMentee(menteeDTO);
		mv.addObject("MenteeCount",MenteeCount);
		mv.setViewName("common/member/countTest");
		
		return mv;
	}
	
}
