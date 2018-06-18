package kosta.spring.postIT.model.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kosta.spring.postIT.model.dto.CourseDTO;
import kosta.spring.postIT.model.dto.CourseDateDTO;
import kosta.spring.postIT.model.dto.MentoReputationDTO;

@Repository
public class CourseDAOImpl implements CourseDAO {
	
	@Autowired
	private SqlSession session;

	@Override
	public CourseDTO courseDetail(String couseCode) {

		return session.selectOne("courseMapper.courseDetailAssociation", couseCode);
	}

	@Override
	public String courseFav(String couseCode,String userId) {
		Map<String, String> map = new HashMap<>();
		if(couseCode!=null) map.put("couseCode", couseCode);
		if(userId!=null) map.put("userId", userId);
		//if�� ��� �Ǵµ�, �ʿ������ map�� key�������� �ʿ�� �����ϱ� �� 
		//List<ProductDTO> list = session.selectList("productMapper.productSelect", map);

		 return session.selectOne("courseMapper.courseFav", map);
	}

	@Override
	public int favDelete(String couseCode,String userId) {
		Map<String, String> map = new HashMap<>();
		if(couseCode!=null) map.put("couseCode", couseCode);
		if(userId!=null) map.put("userId", userId);
		
		return session.delete("courseMapper.favDelete", map);
	}

	@Override
	public int favInsert(String couseCode,String userId) {
		//System.out.println("ser : "+couseCode);
		//System.out.println("seruserId : "+userId);
		Map<String, String> map = new HashMap<>();
		if(couseCode!=null) map.put("couseCode", couseCode);
		if(userId!=null) map.put("userId", userId);		
		//System.out.println("favInsert"+session.insert("courseMapper.favInsert", map));
		
		//int re = session.insert("courseMapper.favInsert", map);
		
		return session.insert("courseMapper.favInsert", map);
		//return re;
	}

	@Override
	public String coursePay(String courseCode, String userId) {
		
		Map<String, String> map = new HashMap<>();
		if(courseCode!=null) map.put("courseCode", courseCode);
		if(userId!=null) map.put("userId", userId);	
		
		return session.selectOne("courseMapper.coursePay", map);
	}

	@Override
	public List<CourseDTO> courseDay(String courseCode) {
		
		return session.selectList("courseMapper.courseDay", courseCode);
	}

	@Override
	public List<MentoReputationDTO> courseReview(String courseCode) {
		System.out.println("CourseDAOImpl : "+courseCode);
		
		return session.selectList("courseMapper.courseReview", courseCode);
	}
	
	
	

}