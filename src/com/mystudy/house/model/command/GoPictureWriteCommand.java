package com.mystudy.house.model.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mystudy.house.model.dao.PictureDAO;
import com.mystudy.house.model.vo.PictureVO;

public class GoPictureWriteCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
				
		PictureVO vo = new PictureVO();
		vo.setContent(request.getParameter("content"));
		vo.setId((String) session.getAttribute("id"));
		vo.setResidence(request.getParameter("residence"));
		vo.setSizes(request.getParameter("sizes"));
		vo.setSpace(request.getParameter("space"));
		vo.setStyle(request.getParameter("style"));
		
		PictureDAO.writePicture(vo);
		
		return "picture.do";
	}

}
