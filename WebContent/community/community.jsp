<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%
	String id = (String)session.getAttribute("id");
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>오늘의집 - 홈</title>
	<%@ include file="../common/style.jspf" %>
  	<style>
  		.community {
  			color: #35C5F0;
  			font-weight: bold;
  		}
  		.store {
  			color: black;
  		}
  		.home {
  			color: #35C5F0;
			font-weight: bold;
  		}
  		.picture, .knowhow, .qna {
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
			본문
		</div>
		<%@ include file="../common/footer.jspf" %>
	</div>
</body>
</html>