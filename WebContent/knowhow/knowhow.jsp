<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%
	String category = request.getParameter("category");
	pageContext.setAttribute("category", category);

	List<String> menu = Arrays.asList("시공정보","수납","꾸미기팁","청소","DIY&리폼","이거어때","생활정보","건축&주택","상업공간","지식백과");
	pageContext.setAttribute("menu", menu);
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>오늘의집 - 노하우</title>
	<%@ include file="../common/style.jspf" %>
  	<style>
  		.community {
  			color: #35C5F0;
  			font-weight: bold;
  		}
  		.store {
  			color: black;
  		}
  		.knowhow {
  			color: #35C5F0;
			font-weight: bold;
  		}
  		.picture, .home, .qna {
  			color: black;
  		}
	</style>
</head>
<body>
	<div class="container">
		<c:if test="${empty id }">
			<%@ include file="../common/navbar_guest.jspf" %>
		</c:if>
		<c:if test="${not empty id }">
			<%@ include file="../common/navbar_member.jspf" %>
		</c:if>
		<%@ include file="../common/communityMenu.jspf" %>
		<div class="container-fluid">
			<div>
				<h5>테마별 노하우</h5>
				<div>
					<c:forEach items="${menu }" var="menu" varStatus="status">
						<c:if test="${category == status.index }">
							<button type="button" class="btn" id="btn" onclick="location.href='knowhow.jsp?category=${status.index }'">${menu }</button>
						</c:if>
						<c:if test="${category != status.index }">
							<button type="button" class="btn btn-light" onclick="location.href='knowhow.jsp?category=${status.index }'">${menu }</button>
						</c:if>
					</c:forEach>
				</div>
			</div>
		</div>
		<%@ include file="../common/footer.jspf" %>
	</div>
</body>
</html>