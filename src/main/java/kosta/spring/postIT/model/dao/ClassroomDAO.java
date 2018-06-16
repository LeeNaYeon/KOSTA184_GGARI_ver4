package kosta.spring.postIT.model.dao;

import java.util.List;

import kosta.spring.postIT.model.dto.CrAsgnDTO;
import kosta.spring.postIT.model.dto.CrFeedbackDTO;
import kosta.spring.postIT.model.dto.CrNoticeDTO;
import kosta.spring.postIT.model.dto.CrSubAsgnDTO;
import kosta.spring.postIT.model.dto.MenteeDTO;

public interface ClassroomDAO {
	
	//asgn
	
	int insertAsgn(CrAsgnDTO crAsgnDTO);
	
	int updateAsgn(CrAsgnDTO crAsgnDTO);
	
	int deleteAsgn(String crAsgnCode);
	
	int asgnReadnumUpdate(String crAsgnCode);

	MenteeDTO selectAsgnList(String courseCode);
	
	MenteeDTO selectAsgn(String courseCode);
	
	CrAsgnDTO selectAsgnNoJoin(String crAsgnCode);
	
	int insertSubAsgn(CrSubAsgnDTO crSubAsgnDTO);
	
	int updateSubAsgn(CrSubAsgnDTO crSubAsgnDTO);
	
	int deleteSubAsgn(String crAsgnCode, String userId);
	
	List<CrSubAsgnDTO> selectSubAngnList(String crAsgnCode);
	
	CrSubAsgnDTO selectSubAsgn(String crAsgnCode, String userId);
	
	int insertFeedback(CrFeedbackDTO crFeedbackDTO);
	
	int updateFeedback(CrFeedbackDTO crFeedbackDTO);
	
	int deleteFeedback(String crFeedCode);
	
	CrFeedbackDTO selectFeedback(String crSubasgnCode);
	
	//notice
	int insertNotice(CrNoticeDTO crNoticeDTO);
	
	int deleteNotice(String crNoticeCode);
	
	MenteeDTO selectNoticeList(String courseCode);
}
