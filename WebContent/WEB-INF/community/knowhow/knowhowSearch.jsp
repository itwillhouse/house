<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
  		
  		.input-group {
  			margin:0 auto;	
  			width: 40%;
  		}
  		
  		#searchBtn {
  			background-color: #35C5F0;
			color: white;
  		}
	</style>
	<script>
		$(document).ready(function(){
			$("#searchBtn").click(function() {
				location.href = "knowhowSearch.do?text=" + $("#searchText").val() + "&opt=" + $("#searchOpt").val();
			})
		});
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
		<div>
			<div class="pt-5 pb-5 text-center bg-light">
				<h5 class="mb-0"><b>테마별 노하우</b></h5>
				<div class="mt-3 input-group">
					<select class="form-control p-0" id="searchOpt" name="searchOpt">
						<c:if test="${opt == 1 }">
							<option value="1" selected>제목</option>
						</c:if>
						<c:if test="${opt != 1 }">
							<option value="1">제목</option>
						</c:if>
						<c:if test="${opt == 2 }">
							<option value="2" selected>내용</option>
						</c:if>
						<c:if test="${opt != 2 }">
							<option value="2">내용</option>
						</c:if>
						<c:if test="${opt == 3 }">
							<option value="3" selected>작성자</option>
						</c:if>
						<c:if test="${opt != 3 }">
							<option value="3">작성자</option>
						</c:if>
					</select> 
					<input id="searchText" type="text" class="form-control p-0" style="width: 150px" value="${text }">
					<div class="input-group-append">
						<button class="btn" id="searchBtn" type="button">검색</button>
					</div>
				</div>	
			</div>	
			<div class="pt-3">
				<c:forEach items="${list }" var="vo">
					<div class="row">
						<div class="col-sm-10 pt-3 pb-2">
							<div class="pb-2">
								<button onclick="location.href='knowhow.do?category=${vo.category }'" type="button" id="btn" class="btn btn-sm">${menu[vo.category] }</button>
							</div>
							<div>
								<button class="btn btn-link p-0" onclick="location.href='knowhowDetail.do?idx=${vo.knowhowIdx }'">
    								<h5 class="text-dark"><b>${vo.subject }</b></h5>
    							</button>
							</div>
							<div>
								${vo.content }
							</div>
							<div>
								<small>
									${vo.id }&nbsp;&nbsp;|&nbsp;
									${vo.regdate }&nbsp;&nbsp;|&nbsp;
									댓글 ${vo.c1Cnt + vo.c2Cnt }&nbsp;&nbsp;|&nbsp;
									조회 ${vo.views }
								</small><br> 
							</div>
						</div>
						<div class="col-sm-2 d-flex align-items-center">
							<img style="border-radius: 10px" src="${pageContext.request.contextPath}/img/knowhowThumbnail/${vo.thumbnail }" width="100%">
						</div>
					</div>
					<hr>
			</c:forEach>
			</div>
    	</div>
    	<%@ include file="/WEB-INF/common/footer.jspf" %>
	</div>
</body>
</html>