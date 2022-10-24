package com.mystudy.house.model.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mystudy.house.model.dao.KnowhowDAO;
import com.mystudy.house.model.vo.KnowhowVO;

public class GoKnowhowEditCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String idx = request.getParameter("idx");
		
		KnowhowVO vo = new KnowhowVO();
		
		vo.setKnowhowIdx(idx);
		vo.setCategory(request.getParameter("category"));
		vo.setContent(request.getParameter("content"));
		vo.setSubject(request.getParameter("subject"));
		
		KnowhowDAO.editKnowhow(vo);
		
		return "knowhowDetail.do?idx=" + idx;
	}

}
