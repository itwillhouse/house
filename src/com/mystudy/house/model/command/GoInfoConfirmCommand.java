package com.mystudy.house.model.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mystudy.house.model.dao.MembersDAO;
import com.mystudy.house.model.vo.MembersVO;

public class GoInfoConfirmCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		
		MembersVO vo = new MembersVO();
		vo.setName(request.getParameter("name"));
		vo.setPhone(request.getParameter("phone"));
		
		String idFind = MembersDAO.findId(vo);
		
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		if(id.equals(idFind)) {
			request.setAttribute("id", id);
			return "/WEB-INF/member/pwReset/pwReset.jsp";
		} else {
			request.setAttribute("msg", "해당하는 회원이 없습니다");
			return "/WEB-INF/common/alert.jsp";
		}
	}

}
