package kosta.spring.postIT.model.dao;

import java.util.List;

import kosta.spring.postIT.model.dto.QnADTO;

public interface QnADAO {
	
	List<QnADTO> selectAll();
	
	int insertQnA(QnADTO qnADTO);
	
	QnADTO select(String qaCode);
}
