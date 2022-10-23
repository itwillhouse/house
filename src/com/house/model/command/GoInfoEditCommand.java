package com.house.model.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.house.model.dao.MembersDAO;
import com.house.model.vo.MembersVO;

public class GoInfoEditCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		MembersVO vo = new MembersVO();
		vo.setId((String) session.getAttribute("id"));
		vo.setName(request.getParameter("name"));
		vo.setEmail(request.getParameter("email"));
		vo.setAddr(request.getParameter("addr"));
		vo.setAddrDetail(request.getParameter("addrDetail"));
		vo.setPhone(request.getParameter("phone"));
		
		MembersDAO.editInfo(vo);
		
		return "infoEdit.do";
	}

}
