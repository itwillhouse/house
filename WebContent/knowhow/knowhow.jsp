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
			<%@ include file="../common/navbar_member.jspf" %>
		</c:if>
		<c:if test="${not empty id }">
			<%@ include file="../common/navbar_member.jspf" %>
		</c:if>
		<%@ include file="../common/communityMenu.jspf" %>
		<div class="container-fluid">
			<div class="pt-4">
				<h5 class="mb-0"><b>테마별 노하우</b></h5>
			</div>
			<div class="d-flex flex-row-reverse">
				<select class="form-control border-0 p-0" style="width: 150px" id="order" name="order">
        			<option>최근인기순</option>
        			<option>역대인기순</option>
        			<option selected>최신순</option>
        			<option>과거순</option>
      			</select>
			</div>
			<div class="pb-3 pt-2">
				<c:if test="${empty category }">
					<button type="button" class="btn" id="btn" onclick="location.href='knowhow.jsp'">전체</button>
				</c:if>
				<c:if test="${not empty category }">
					<button type="button" class="btn btn-light" onclick="location.href='knowhow.jsp'">전체</button>
				</c:if>					
				<c:forEach items="${menu }" var="m" varStatus="status">
					<c:if test="${category == status.index }">
						<button type="button" class="btn" id="btn" onclick="location.href='knowhow.jsp?category=${status.index }'">${m }</button>
					</c:if>
					<c:if test="${category != status.index }">
						<button type="button" class="btn btn-light" onclick="location.href='knowhow.jsp?category=${status.index }'">${m }</button>
					</c:if>
				</c:forEach>
			</div>
			<!-- 사진에 북마크 아이콘: https://www.w3schools.com/bootstrap4/bootstrap_cards.asp -->
			<div class="row pb-4">
				<c:forEach begin="1" end="12">
					<div class="col-sm-3 pt-3">
    				<div class="thumbnail pb-2">
    					<a href="knowhowDetail.jsp?idx=1">
    					<img style="border-radius: 10px" src="../imgs/knowhow/sample.png" width="250px" height="180px">
    					</a>
    				</div>
    				<div class="title"><b>키보드에만 100만원 쓴 매니아의 추천 6 ⌨️</b></div>
    				<div class="info">
    					<small>곁gyeot<br>
    					조회수 31,156 스크랩 2,196</small>
    				</div>
    			</div>
				</c:forEach>
    		</div>
    		<ul class="pagination justify-content-center pb-2">
   		 		<li class="page-item"><a class="page-link" href="#">이전</a></li>
    			<li class="page-item active"><a class="page-link" href="#">1</a></li>
    			<li class="page-item"><a class="page-link" href="#">2</a></li>
    			<li class="page-item"><a class="page-link" href="#">3</a></li>
    			<li class="page-item"><a class="page-link" href="#">다음</a></li>
  			</ul>
    	</div>
		<%@ include file="../common/footer.jspf" %>
	</div>
</body>
</html>