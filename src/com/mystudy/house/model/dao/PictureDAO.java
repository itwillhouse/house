package com.mystudy.house.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.mystudy.house.model.vo.PiccommentVO;
import com.mystudy.house.model.vo.PiclikeVO;
import com.mystudy.house.model.vo.PicscrapVO;
import com.mystudy.house.model.vo.PictureVO;
import com.mystudy.house.mybatis.DBService;

public class PictureDAO {

	// 사진글 조회
	public static List<PictureVO> showPicture() {
		SqlSession ss = DBService.getFactory().openSession();
		List<PictureVO> list = ss.selectList("house.showPicture");
		ss.close();
		return list;
	}
	
	// 사진글 상세 조회
	public static PictureVO showPictureDetail(String idx) {
		SqlSession ss = DBService.getFactory().openSession();
		PictureVO vo = ss.selectOne("house.showPictureDetail", idx);
		ss.close();
		return vo;
	}
	
	// 사진글 작성
	public static void writePicture(PictureVO vo) {
		SqlSession ss = DBService.getFactory().openSession(true);
		ss.insert("house.writePicture", vo);
		ss.close();
	}

	// 사진글 조회수 증가
	public static void addPictureViews(String idx) {
		SqlSession ss = DBService.getFactory().openSession(true);
		ss.update("house.addPictureViews", idx);
		ss.close();
	}	
	
	// 사진글 좋아요
	public static int likePicture(PiclikeVO vo) {
		SqlSession ss = DBService.getFactory().openSession(true);
		
		List<String> list = ss.selectList("house.confirmpiclike", vo);
		
		int result = 0;
		if(list.isEmpty()) {
			result = ss.insert("house.likePicture", vo);
		}
		ss.close();
		return result;
	}

	// 사진글 스크랩
	public static int scrapPicture(PicscrapVO vo) {
		SqlSession ss = DBService.getFactory().openSession(true);
		
		List<String> list = ss.selectList("house.confirmpicscrap", vo);
		
		int result = 0;
		if(list.isEmpty()) {
			result = ss.insert("house.scrapPicture", vo);
		}
		ss.close();
		return result;
	}	
	
	// 사진글 삭제
	public static void deletePicture(String idx) {
		SqlSession ss = DBService.getFactory().openSession(true);
		ss.delete("house.deletePicture", idx);
		ss.close();
	}
	
	// 사진글 댓글 조회
	public static List<PiccommentVO> showPictureComments(String idx) {
		SqlSession ss = DBService.getFactory().openSession();
		List<PiccommentVO> list = ss.selectList("house.showPictureComments", idx);
		ss.close();
		return list;
	}
	
	// 사진글 대댓글 조회
	public static List<PiccommentVO> showPictureReply(String idx) {
		SqlSession ss = DBService.getFactory().openSession();
		List<PiccommentVO> list = ss.selectList("house.showPictureReply", idx);
		ss.close();
		return list;
	}
	
	// 사진글 댓글 작성
	public static void writePictureComment(PiccommentVO vo) {
		SqlSession ss = DBService.getFactory().openSession(true);
		ss.insert("house.writePictureComment", vo);
		ss.close();
	}
	
	// 사진글 대댓글 작성
	public static void writePictureComment2(PiccommentVO vo) {
		SqlSession ss = DBService.getFactory().openSession(true);
		ss.insert("house.writePictureComment2", vo);
		ss.close();
	}	
	
	// 사진글 댓글 삭제
	public static void deletePictureComment(String comIdx) {
		SqlSession ss = DBService.getFactory().openSession(true);
		ss.delete("house.deletePictureComment", comIdx);
		ss.close();
	}
	
	// 사진글 대댓글 삭제
	public static void deletePictureComment2(String comIdx) {
		SqlSession ss = DBService.getFactory().openSession(true);
		ss.delete("house.deletePictureComment2", comIdx);
		ss.close();
	}
	
}
