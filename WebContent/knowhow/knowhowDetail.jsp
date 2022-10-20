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
		<div class="container-fluid pb-3">
			<div class="pt-4 pb-3">
				<a class="text-dark" href="#">노하우</a> > <a class="text-dark" href="#">꾸미기팁</a>
			</div>
			<div class="pb-4">
				<button class="btn" id="btn">수정</button>
				<button class="btn" id="btn">삭제</button>
			</div>
			<h3><b>키보드에만 100만원 쓴 매니아의 추천 6 ⌨️</b></h3>
			<div class="profile row pt-2 pb-4">
    			<div class="col-sm-1 text-right">
    				<img style="border-radius: 50px" src="../imgs/knowhow/sample.png" width="50px" height="50px">
    			</div>
    			<div class="col-sm-11">
    				<span><b>곁gyeot</b></span><br>
    				<span><small>2022-10-20</small></span>
    			</div>
    		</div>
			<div class="pt-3 pb-3">
				<img class="pb-3" src="../imgs/knowhow/sample.png" width="100%">
				<span>안녕하세요. 이번에도 인사 드리게 되었습니다 : ) 일상을 가꾸는 '라이프테리어'이자 자기성장 전자 콘텐츠 브랜드 런칭을 앞두고 있는 '곁'입니다. </span>
			</div>
		<div>
			<div style="float:left; color: gray;">좋아요 562 스크랩 2,199 댓글 69 조회 31,180</div>
			<div style="float:right;">
				<button type="button" class="btn btn-outline-secondary btn-sm mb-2">
    				좋아요
  				</button>
				<button type="button" class="btn btn-outline-secondary btn-sm mb-2">
					스크랩
				</button>
			</div>
		</div>
		<div style="clear:both">
			<hr>
			<div><b>댓글 69</b></div>
			<form class="pt-3" action="/action_page.php">
  				<div class="row">
    				<div class="col-sm-11"><input type="text" class="form-control" placeholder="칭찬과 격려의 댓글은 작성자에게 큰 힘이 됩니다 :)" id="comment">
  				</div>
  				<div class="col-sm-1"><button type="submit" class="btn" id="btn">입력</button></div>
  				</div>
			</form>
			<div class="comments pt-4">
				<div class="comment row pb-3">
    				<div class="col-sm-1 text-right">
    					<img style="border-radius: 40px" src="../imgs/knowhow/sample.png" width="40px" height="40px">
    				</div>
    				<div class="col-sm-11">
    					<span><b>mh24</b></span><br>
    					<span><i>@mh24</i> 단조로울 수 있는 인테리어에 블루 한방울 색을 입혀주니 청량하고 생기있어 보이는 공간이 된것 같아요</span><br>
    					<span>5일 전</span>&nbsp;&nbsp;
    				</div>  	
    			</div>
    			<div class="comment row pb-3">
    				<div class="col-sm-1 text-right">
    					<img style="border-radius: 40px" src="../imgs/knowhow/sample.png" width="40px" height="40px">
    				</div>
    				<div class="col-sm-11">
    					<span><b>mh24</b></span><br>
    					<span>단조로울 수 있는 인테리어에 블루 한방울 색을 입혀주니 청량하고 생기있어 보이는 공간이 된것 같아요</span><br>
    					<span>5일 전</span>&nbsp;&nbsp;
    					<a href="#" data-toggle="collapse" data-target="#demo">답글 달기</a>
    					<div id="demo" class="collapse">
    						<form class="mt-3" action="/action_page.php">
  								<div class="row">
    								<div class="col-sm-10">
    									<input type="text" class="form-control" placeholder="칭찬과 격려의 댓글은 작성자에게 큰 힘이 됩니다 :)" id="comment">
  									</div>
  									<div class="col-sm-2">
  										<button type="submit" class="btn" id="btn">입력</button>
  									</div>
  								</div>
							</form>
    					</div>
    				</div>  	
    				</div>  	
    			</div>
			</div>
		</div>
    	</div>
		<%@ include file="../common/footer.jspf" %>
	</div>
</body>
</html>