<%@page import="com.mystudy.house.model.vo.KnowhowVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>노하우</title>
<%@ include file="/WEB-INF/common/style.jspf" %>
    <style>
    
  .store {
  	color: black;
  }
  .community {
  	color: black;
  }
  
   .bordname{
 	font-size: 1.2em;
 }
 
 
 .card-img-top {
    width: 100%;
    height: 10rem;
    object-fit: cover;
}
 
 
 #mysp, #myrv, #myupdate,
#picture, #qa, #collections{
	color: black;
}


#mypage, #knowhow	{
	color: #35C5F0;
	}

#card:hover {
  	transform: scale(1.1);
	}


 

  </style>
</head>
<body>
<div class="container">
<%@ include file="/WEB-INF/common/memberMenu.jspf" %>
<%@ include file="/WEB-INF/common/mypageMenu.jspf" %>
<%@ include file="/WEB-INF/mypage/profile.jspf" %>
<br><br>


<div class="container">
<div class="row">
<div class="col-3">

<%@ include file="/WEB-INF/mypage/profilecard.jspf" %>
</div>

<div class="col-9">

<div class="container">
<div class="row">

<c:if test="${empty list }">
			<div class="text-center col-12">
     			<p style="color: gray; font-size: 0.9em;">결과가 존재하지 않습니다</p>
     		</div>	
</c:if>

<c:if test="${not empty list }">
<c:forEach items="${list }" var="vo">
<div class="col-xl-4 col-lg-6 mb-3">
<div class="card" id="card" style="width: 15rem; cursor: pointer;" onclick="location.href='knowhowDetail.do?idx=${vo.knowhowIdx }'">
  <img src="${pageContext.request.contextPath}/imgs/166592706060596621.png" class="card-img-top" alt="...">
  <div class="card-body">
    <p class="card-text">
    		${vo.subject }<br>
    		<span style="font-size: 0.75em;">좋아요 ${vo.likeCnt} 스크랩 ${vo.scrapCnt} 댓글 ${vo.c1Cnt + vo.c2Cnt} 조회수 ${vo.views }</span>
    </p>
  </div>
</div>
</div>
</c:forEach>
</c:if>


</div>


</div>
</div>

</div>

</div>
<br><br>
<%@ include file="/WEB-INF/common/footer.jspf" %>
</div>
</body>
</html>