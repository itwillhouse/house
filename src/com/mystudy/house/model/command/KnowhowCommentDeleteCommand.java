package com.mystudy.house.model.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mystudy.house.model.dao.KnowhowDAO;

public class KnowhowCommentDeleteCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 댓글 삭제
		
		String idx = request.getParameter("idx"); // 글번호
		String comIdx = request.getParameter("comIdx"); // 댓글번호
		
		KnowhowDAO.deleteKnowhowComment(comIdx);
		
		return "knowhowDetail.do?idx=" + idx;
	}

}
