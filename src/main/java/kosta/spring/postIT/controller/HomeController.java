package kosta.spring.postIT.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(HttpSession session) {

		return "main/mainpage/index";
		
//		session.setAttribute("courseCode", "a1");
//		return "redirect:/cr/notice/selectList";
	}
	
	@RequestMapping("/index")
	public String gohome() {
		return "main/mainpage/index";
	}
	
	@RequestMapping("/loginForm")
	public String login() {
		return "common/member/loginForm";
	}
	
	@RequestMapping("/loginFind")
	public String loginFind() {
		return "common/member/loginFind";
	}
	
	//jian
	
	@RequestMapping("/join")
	public String join() {

		return "common/member/join";
	}
	
	@RequestMapping("/joinMentee")
	public String joinMentee() {

		return "common/member/joinMentee";
	}
	
	@RequestMapping("/joinMento")
	public String joinMento() {

		return "common/member/joinMento";
	}
	
	@RequestMapping("/course")
	public String course() {

		return "common/courese/course";
	}

	@RequestMapping("/courseDetail")
	public String courseDetail() {

		return "common/courese/courseDetail";
	}

}
