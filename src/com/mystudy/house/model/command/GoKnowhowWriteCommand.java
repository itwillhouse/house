package com.mystudy.house.model.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mystudy.house.model.dao.KnowhowDAO;
import com.mystudy.house.model.vo.KnowhowVO;

public class GoKnowhowWriteCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		KnowhowVO vo = new KnowhowVO();
		vo.setCategory(request.getParameter("category"));
		vo.setContent(request.getParameter("contnet"));
		vo.setId((String) session.getAttribute("id"));
		vo.setSubject(request.getParameter("subject"));
		
		KnowhowDAO.writeKnowhow(vo);
		
		return "knowhow.do";
	}

}
