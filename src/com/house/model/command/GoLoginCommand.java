package com.house.model.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.house.model.dao.MembersDAO;
import com.house.model.vo.MembersVO;

public class GoLoginCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		MembersVO vo = new MembersVO();
		vo.setId(request.getParameter("id"));
		vo.setPw(request.getParameter("pw"));
		
		String id = MembersDAO.login(vo);
		
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		if(id != null) {
			session.setAttribute("id", id);
			return "/WEB-INF/community/community.jsp";
		} else {
			request.setAttribute("msg", "로그인 실패하였습니다");
			return "/WEB-INF/common/alert.jsp";
		}
	}

}
