<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>오늘의집 - 노하우</title>
	<%@ include file="/WEB-INF/common/style.jspf"%>
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
	<script>
		function changeOrder(value) {
			switch(value) {
			case '1':
				// AJAX 사용
				break;
			case '2':
				break;
			case '3':
				break;
			case '4':
				break;
			}
		}
	</script>
</head>
<body>
	<div class="container">
	<c:if test="${empty id }">
		<%@ include file="/WEB-INF/common/guestMenu.jspf" %>
	</c:if>
	<c:if test="${not empty id }">
		<%@ include file="/WEB-INF/common/memberMenu.jspf" %>
	</c:if>
	<%@ include file="/WEB-INF/common/communityMenu.jspf" %>
		<div class="container-fluid">
			<div class="pt-4">
				<h5 class="mb-0"><b>테마별 노하우</b></h5>
			</div>
			<div class="d-flex flex-row-reverse">
				<select onchange="changeOrder(this.value)" class="form-control border-0 p-0" style="width: 150px" id="order" name="order">
        			<option value="1">최근인기순</option>
        			<option value="2">역대인기순</option>
        			<option value="3" selected>최신순</option>
        			<option value="4">과거순</option>
      			</select>
			</div>
			<div class="pb-3 pt-2">
				<c:if test="${empty category }">
					<button type="button" class="btn" id="btn" onclick="location.href='knowhow.do'">전체</button>
				</c:if>
				<c:if test="${not empty category }">
					<button type="button" class="btn btn-light" onclick="location.href='knowhow.do'">전체</button>
				</c:if>					
				<c:forEach items="${menu }" var="m" varStatus="status">
					<c:if test="${category == status.index }">
						<button type="button" class="btn" id="btn" onclick="location.href='knowhow.do?category=${status.index }'">${m }</button>
					</c:if>
					<c:if test="${category != status.index }">
						<button type="button" class="btn btn-light" onclick="location.href='knowhow.do?category=${status.index }'">${m }</button>
					</c:if>
				</c:forEach>
			</div>
			<!-- 사진에 북마크 아이콘: https://www.w3schools.com/bootstrap4/bootstrap_cards.asp -->
			<c:if test="${empty list }">
			<div class="text-center p-4">
     			<h5>앗! 찾으시는 결과가 없네요.</h5>
     		</div>	
			</c:if>
			<c:if test="${not empty list }">
			<div class="row pb-4">
				<c:forEach items="${list }" var="vo">
					<div class="col-sm-3 pt-3">
    				<div class="thumbnail pb-2">			
    					<img class="card-img-top" style="border-radius: 10px" src="../imgs/knowhow/sample2.png" width="260px" height="180px">
    					<div class="card-img-overlay text-right">
      						<a href="#"><i class="p-2 far fa-bookmark fa-lg" style="color: white"></i></a>
      						<!-- 북마크 완료: <i class="p-2 fas fa-bookmark fa-lg" style="color: white"></i> -->
    					</div>
    				</div>
    				<div class="title"><b>${vo.subject }</b></div>
    				<div class="info">
    					<small>${vo.id }<br>
    					조회수 ${vo.views } 스크랩 ${vo.scrapCnt }</small>
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
  			</c:if>
    	</div>
	</div>
</body>
</html>