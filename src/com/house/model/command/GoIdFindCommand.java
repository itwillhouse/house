package com.house.model.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.house.model.dao.MembersDAO;
import com.house.model.vo.MembersVO;

public class GoIdFindCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MembersVO vo = new MembersVO();
		vo.setName(request.getParameter("name"));
		vo.setPhone(request.getParameter("phone"));
		
		String id = MembersDAO.findId(vo);
		
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		if(id == null) {
			request.setAttribute("msg", "해당하는 아이디가 없습니다");
		} else {
			request.setAttribute("msg", "찾은 아이디: " + id);
		}
		
		return "/WEB-INF/common/alert.jsp";
	}

}
