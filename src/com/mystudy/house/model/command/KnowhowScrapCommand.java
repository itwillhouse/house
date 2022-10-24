package com.mystudy.house.model.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mystudy.house.model.dao.KnowhowDAO;
import com.mystudy.house.model.vo.KnowscrapVO;

public class KnowhowScrapCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		String idx = request.getParameter("idx");
		String id = (String) session.getAttribute("id");
		if(id == null) {
			return "login.do";
		}
		
		KnowscrapVO vo = new KnowscrapVO();
		vo.setId(id);
		vo.setKnowhowIdx(idx);
		
		int result = KnowhowDAO.scrapKnowhow(vo);
		if(result > 0) {
			return "knowhowDetail.do?idx=" + idx;
		} else {
			request.setAttribute("msg", "이미 스크랩 한 글입니다");
			return "/WEB-INF/common/alert.jsp";
		}

	}

}
