package com.house.model.dao;

import java.util.List;
import org.apache.ibatis.session.SqlSession;
import com.house.model.vo.KnowhowVO;
import com.house.mybatis.DBService;

public class KnowhowDAO {

	public static int getTotalCount() {
		return 0;
	}
	
	public static int getTotalCount(String category) {
		return 0;
	}
	
	// 노하우 전체 조회
	public static List<KnowhowVO> showKnowhow() {
		SqlSession ss = DBService.getFactory().openSession();
		List<KnowhowVO> list = ss.selectList("house.showAllKnowhow");
		ss.close();
		return list;
	}
	
	// 노하우 조회
	public static List<KnowhowVO> showKnowhow(String category) {
		SqlSession ss = DBService.getFactory().openSession();
		List<KnowhowVO> list = ss.selectList("house.showKnowhow", category);
		ss.close();
		return list;
	}
	
}
