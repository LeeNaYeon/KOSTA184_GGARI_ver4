package kosta.spring.postIT.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class QnAController {
	
	@RequestMapping("/qna")
	public String moveQna() {
		return "common/qna/qnaMain";
	}
}
