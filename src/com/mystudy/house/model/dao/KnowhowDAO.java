package com.mystudy.house.model.dao;

import java.util.List;
import org.apache.ibatis.session.SqlSession;
import com.mystudy.house.model.vo.KnowhowVO;
import com.mystudy.house.model.vo.KnowlikeVO;
import com.mystudy.house.model.vo.KnowscrapVO;
import com.mystudy.house.mybatis.DBService;

public class KnowhowDAO {

	public static int getTotalCount() {
		return 0;
	}
	
	public static int getTotalCount(String category) {
		return 0;
	}
	
	// 노하우 전체 조회
	public static List<KnowhowVO> showAllKnowhow() {
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
	
	// 노하우 작성
	public static int writeKnowhow(KnowhowVO vo) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.insert("house.writeKnowhow", vo);
		ss.close();
		return result;
	}
	
	// 노하우 수정
	public static int editKnowhow(KnowhowVO vo) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.update("house.editKnowhow", vo);
		ss.close();
		return result;
	}	
	
	// 노하우 상세 조회
	public static KnowhowVO showKnowhowDetail(String idx) {
		SqlSession ss = DBService.getFactory().openSession();
		KnowhowVO vo = ss.selectOne("house.showKnowhowDetail", idx);
		ss.close();
		return vo;
	}
	
	// 노하우 조회수 증가
	public static void addKnowhowViews(String idx) {
		SqlSession ss = DBService.getFactory().openSession(true);
		ss.update("house.addKnowhowViews", idx);
		ss.close();
	}	
	
	// 노하우 좋아요
	public static int likeKnowhow(KnowlikeVO vo) {
		SqlSession ss = DBService.getFactory().openSession(true);
		
		List<String> list = ss.selectList("house.confirmknowlike", vo);
		
		int result = 0;
		if(list.isEmpty()) {
			result = ss.insert("house.likeKnowhow", vo);
		}
		ss.close();
		return result;
	}

	// 노하우 스크랩
	public static int scrapKnowhow(KnowscrapVO vo) {
		SqlSession ss = DBService.getFactory().openSession(true);
		
		List<String> list = ss.selectList("house.confirmknowscrap", vo);
		
		int result = 0;
		if(list.isEmpty()) {
			result = ss.insert("house.scrapKnowhow", vo);
		}
		ss.close();
		return result;
	}
	
	// 노하우 삭제
	public static void deleteKnowhow(String idx) {
		SqlSession ss = DBService.getFactory().openSession(true);
		ss.delete("house.deleteKnowhow", idx);
		ss.close();
	}

}
