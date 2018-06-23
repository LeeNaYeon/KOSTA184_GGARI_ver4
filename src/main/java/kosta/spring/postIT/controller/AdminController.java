package kosta.spring.postIT.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kosta.spring.postIT.model.dto.MenteeDTO;
import kosta.spring.postIT.model.dto.MentoDTO;
import kosta.spring.postIT.model.service.AdminService;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired 
	private AdminService service;
	
	
	@RequestMapping("/menteeSelect") 
	public ModelAndView menteeSelect() {
		
		ModelAndView mv = new ModelAndView();
		
		List<MenteeDTO> list = service.menteeSelect();
		
		mv.addObject("list",list);	
		mv.setViewName("admin/menteeSelectList");
		
		return mv;
		
	}
	
	@RequestMapping("/menteeDelete") 
	public String menteeDelete(String userId) {

		int re = service.menteeDelete(userId);
		
		return "redirect:/admin/menteeSelect";
		
	}
	
	@RequestMapping("/mentoSelect")
	public ModelAndView mentoSelect() {
		
		ModelAndView mv = new ModelAndView();
		
		List<MentoDTO> list = service.mentoSelect();
		
		mv.addObject("list",list);
		mv.setViewName("admin/mentoSelectList");
		
		return mv;
	}
	
    @RequestMapping("/mentoDelete") 
	public String mentoDelete(String userId) {

		int re = service.mentoDelete(userId);
		
		return "redirect:/admin/mentoSelect";
		
	}
	
	
}
