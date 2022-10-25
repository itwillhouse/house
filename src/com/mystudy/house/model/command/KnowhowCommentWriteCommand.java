package com.mystudy.house.model.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mystudy.house.model.dao.KnowhowDAO;
import com.mystudy.house.model.vo.KnowcommentVO;

public class KnowhowCommentWriteCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		String idx = request.getParameter("idx");
		System.out.println(idx);

		KnowcommentVO vo = new KnowcommentVO();
		vo.setId((String) session.getAttribute("id"));
		vo.setContent(request.getParameter("comment"));
		vo.setKnowhowIdx(idx);
		
		KnowhowDAO.writeKnowhowComment(vo);
		
		return "knowhowDetail.do?idx=" + idx;
	}

}
