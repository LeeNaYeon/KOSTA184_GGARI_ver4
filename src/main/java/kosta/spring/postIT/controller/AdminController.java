package kosta.spring.postIT.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kosta.spring.postIT.model.dto.ApplicantDTO;
import kosta.spring.postIT.model.dto.MentoDTO;
import kosta.spring.postIT.model.service.CourseService;
import kosta.spring.postIT.model.service.MemberService;

@Controller
public class AdminController {

	@Autowired
	private MemberService memberService;
	@Autowired
	private CourseService courseService;
	
	/**
	 * ������ list
	 * */
	@RequestMapping("/admin")
	public ModelAndView adminApplicant() {
		System.out.println("dd");
		ModelAndView mv = new ModelAndView();
		List<ApplicantDTO> selectApplicantList = memberService.selectApplicant();

		mv.addObject("selectApplicantList", selectApplicantList);	
		mv.setViewName("admin/adminpage/applicantSelectList");
		return mv;
	}
	/**
	 * ������ ���� update
	 * */
	@RequestMapping("/admin/changeStatus")
	public String changeApplicantStatus(String userId,String selectBox) {
		
		if(selectBox.equals("������οϷ�")) {
				
			//notification �˸� ���� ȣ��
			memberService.notificationInsert(userId);
			
			//authority ���� �����߰�
			memberService.menteeRoleUpdate(userId);
			
			//mento �ش� applicant���� �Է� ���� ȣ��
			ApplicantDTO applicantDTO = memberService.beforeApplicantSelect(userId);
		
			MentoDTO mentoDTO = new MentoDTO(userId, applicantDTO.getApplicantResume(), "������ �Ұ����ּ���.", 
											 applicantDTO.getApplicantMajor1(), applicantDTO.getApplicantMajor2(), applicantDTO.getApplicantMajor3());
			memberService.afterApplicantInsert(mentoDTO);
			
			//applicant �ش� ���ڵ� ���� ���� ȣ��
			memberService.applicantStatusDelete(userId);
						
		}else if(selectBox.equals("����")) {
			
			//notification �˸� ���� ȣ��
			memberService.notificationInsertDeny(userId);
			
			//applicant �ش� ���ڵ� ���� ���� ȣ��
			memberService.applicantStatusDelete(userId);
						
		}
		
		memberService.applicantStatusUpdate(userId, selectBox);
		return "redirect:/admin";

	}
}
