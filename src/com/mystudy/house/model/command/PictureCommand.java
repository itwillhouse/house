package com.mystudy.house.model.command;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mystudy.house.model.dao.PictureDAO;
import com.mystudy.house.model.vo.PictureVO;

public class PictureCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<PictureVO> list = null;
		list = PictureDAO.showPicture();
		request.setAttribute("list", list);
		
		return "/WEB-INF/community/picture/picture.jsp";
	}

}
