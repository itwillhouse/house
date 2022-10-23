package com.house.model.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.house.model.dao.MembersDAO;
import com.house.model.vo.MembersVO;

public class GoPwResetCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MembersVO vo = new MembersVO();
		vo.setId(request.getParameter("id"));
		vo.setPw(request.getParameter("pw"));
		
		MembersDAO.changepw(vo);
		
		return "/WEB-INF/member/pwReset/infoConfirm.jsp";
	}

}
