package kosta.spring.postIT.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import kosta.spring.postIT.model.dto.QnADTO;
import kosta.spring.postIT.model.service.QnAService;

@Controller
public class QnAController {
	
	@Autowired
	QnAService qnAService;
	
	@RequestMapping("/qna")
	public String moveQna(Model model) {
		List<QnADTO> list = qnAService.selectAll();
		for(QnADTO dto : list) {
			System.out.println(dto.getQaCode());
		}
		model.addAttribute("qnAList", list);
		return "common/qna/qnaMain";
	}
	
	@RequestMapping("/qna/insertQnAForm")
	public String moveQnaInsertForm() {
		return "common/qna/qnAInsertForm";
	}
	
	@RequestMapping("/qna/insertQnA")
	public String insertQnA(QnADTO qnADTO) {
		qnAService.insertQnA(qnADTO);
		return "redirect:/qna";
	}
	
	@RequestMapping("/qna/select/{qaCode}")
	public String select(Model model, @PathVariable String qaCode) {
		QnADTO qnADTO = qnAService.select(qaCode);
		model.addAttribute("qnADTO",qnADTO);
		return "common/qna/qnASelectForm";
	}
}
