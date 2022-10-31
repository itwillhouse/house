package com.mystudy.house.model.command;

import java.io.IOException;
// import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// import com.mystudy.house.model.dao.KnowhowDAO;
// import com.mystudy.house.model.vo.KnowhowVO;

public class CommunityCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 사진 인기순 TOP 10
		
		//List<KnowhowVO> knowhow = KnowhowDAO.showAllKnowhow("1", 1, 10); // 노하우 인기순 TOP 10
		// request.setAttribute("knowhow", knowhow);
		
		// 질답 인기순 TOP 10
		
		return "/WEB-INF/community/community.jsp";
	}

}
