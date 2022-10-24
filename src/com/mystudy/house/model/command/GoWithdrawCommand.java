package com.mystudy.house.model.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mystudy.house.model.dao.MembersDAO;

public class GoWithdrawCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		String id = (String) session.getAttribute("id");
			
		int result = MembersDAO.withdraw(id);
		
		if(result > 0) {
			session.setAttribute("id", null);
			return "/WEB-INF/community/community.jsp";
		} else {
			return "/WEB-INF/mypage/myupdate/withdraw.jsp";
		}
	}

}
