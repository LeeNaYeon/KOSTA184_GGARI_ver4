package kosta.spring.postIT.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import kosta.spring.postIT.model.dto.NoticeDTO;
import kosta.spring.postIT.model.service.NoticeService;

@Controller
public class NoticeController {
	
	private final String savePath = "C:/Users/onething/dev/Java/SpringWorkSpace/springUserBoardTilesSaveFolder";

	@Autowired
	NoticeService noticeService;
	
	@RequestMapping("/notice/mainPage")
	public String selectAll(Model model) {
		List<NoticeDTO> list = noticeService.selectAll();
		model.addAttribute("noticeList", list);
		return "common/notice/NoticeMain";
	}
	
	@RequestMapping("/notice/insertForm")
	public String moveNoticeInsertForm() {
		return "common/notice/NoticeInsertForm";
	}
	
	@RequestMapping("/notice/insert")
	public String insertNotice(NoticeDTO noticeDTO) throws IllegalStateException, IOException{
		MultipartFile file = noticeDTO.getFile();
		if (file.getSize() > 0) {
			noticeDTO.setNoticeFileName(file.getOriginalFilename());
			file.transferTo(new File(savePath + "/" + file.getOriginalFilename()));
		}
		noticeService.insertNotice(noticeDTO);
		return "redirect:/notice/mainPage";
	}
	
	@RequestMapping("/notice/select/{noticeCode}")
	public String selectNotice(Model model, @PathVariable String noticeCode) {
		NoticeDTO noticeDTO = noticeService.select(noticeCode);
		model.addAttribute("noticeDTO", noticeDTO);
		
		return "common/notice/NoticeSelectForm";
		
	}
	
	@RequestMapping("notice/downLoad")
	public ModelAndView downLoad(HttpSession session, String fname) {
		return new ModelAndView("downLoadView", "fname", new File(savePath + "/" + fname));
	}
	
	@RequestMapping("/notice/delete/{noticeCode}")
	public String deleteNotice(@PathVariable String noticeCode) {
		noticeService.deleteNotice(noticeCode);
		return "redirect:/notice/mainPage"; 
	}
	
	@RequestMapping("/notice/updateForm/{noticeCode}")
	public String moveNoticeUpdateForm(Model model, @PathVariable String noticeCode) {
		NoticeDTO noticeDTO = noticeService.select(noticeCode);
		model.addAttribute("noticeDTO", noticeDTO);
		return "common/notice/NoticeUpdateForm";
	}
	
	@RequestMapping("/notice/update")
	public String updateNotice(NoticeDTO noticeDTO) throws IllegalStateException, IOException{
		MultipartFile file = noticeDTO.getFile();
		
			if (file.getSize() > 0) {
				if (noticeDTO.getNoticeFileName()==null) {
					noticeDTO.setNoticeFileName(file.getOriginalFilename());
					file.transferTo(new File(savePath + "/" + file.getOriginalFilename()));
				}
			}
		
		
		noticeService.updateNotice(noticeDTO);
		return "redirect:/notice/select/"+noticeDTO.getNoticeCode();
	}
}
