<%@page import="com.mystudy.house.model.vo.Request_comVO"%>
<%@page import="com.mystudy.house.model.dao.DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.getParameter("UTF-8");
	
	String comIdx = request.getParameter("comIdx");
	
	Request_comVO vo = new Request_comVO();
	
	vo.setComIdx(comIdx);
	
	DAO.delete_request_comment(vo);
	

	
	
	response.sendRedirect("request.jsp");
	
	
	

%>