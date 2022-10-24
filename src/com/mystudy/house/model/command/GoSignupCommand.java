package com.mystudy.house.model.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mystudy.house.model.dao.MembersDAO;
import com.mystudy.house.model.vo.MembersVO;

public class GoSignupCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MembersVO vo = new MembersVO();
		vo.setName(request.getParameter("name"));
		vo.setId(request.getParameter("id"));
		vo.setPw(request.getParameter("pw"));
		vo.setEmail(request.getParameter("email"));
		vo.setAddr(request.getParameter("addr"));
		vo.setAddrDetail(request.getParameter("addrDetail"));
		vo.setPhone(request.getParameter("phone"));
		
		MembersDAO.signup(vo);
		
		return "/WEB-INF/member/login.jsp";
	}

}
