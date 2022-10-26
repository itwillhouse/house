package com.mystudy.house.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

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
	
}
