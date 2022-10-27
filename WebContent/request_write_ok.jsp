<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="com.mystudy.house.model.vo.RequestVO"%>
<%@page import="com.mystudy.house.model.dao.DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("UTF-8");

	String path = "c:/MyStudy/temp";
	
	MultipartRequest mr = new MultipartRequest(
	request, path, (10 * 1024 * 1024),
	"UTF-8", new DefaultFileRenamePolicy());
		
	RequestVO vo = new RequestVO();
	
	vo.setSubject(mr.getParameter("subject"));
	vo.setId(mr.getParameter("id"));
	vo.setRegdate(mr.getParameter("regdate"));
	vo.setComments(mr.getParameter("comments"));
	vo.setFileName(mr.getParameter("fileName"));
	vo.setOriName(request.getParameter("oriName"));

	vo.setIp(request.getRemoteAddr());
	
	if (mr.getFile("fileName") != null) {
		vo.setFileName(mr.getFilesystemName("fileName"));
		vo.setOriName(mr.getOriginalFileName("fimename"));
	} else {
		vo.setFileName("");
		vo.setOriName("");
	}
	System.out.println("asdasd " + vo);


	DAO.insert_request(vo);
	
	response.sendRedirect("request.jsp");
%>