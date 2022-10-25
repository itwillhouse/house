package com.mystudy.house.model.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mystudy.house.model.dao.KnowhowDAO;
import com.mystudy.house.model.vo.KnowcommentVO;

public class KnowhowComment2WriteCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();

		String idx = request.getParameter("idx");
		
		KnowcommentVO vo = new KnowcommentVO();
		vo.setId((String) session.getAttribute("id")); // 작성아이디
		vo.setContent(request.getParameter("comments")); // 내용
		vo.setKnowhowIdx(request.getParameter("knowcomIdx")); // 댓글번호
		
		KnowhowDAO.writeKnowhowComment2(vo);
		
		return "knowhowDetail.do?idx=" + idx;
	}

}
