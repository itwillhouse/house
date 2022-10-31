<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사진</title>
<%@ include file="/WEB-INF/common/style.jspf"%>
<style>
.community {
	color: #35C5F0;
	font-weight: bold;
}

.store {
	color: black;
}

.picture {
	color: #35C5F0;
	font-weight: bold;
}

.home, .knowhow, .qna {
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
		location.href = "pictureSearch.do?text=" + $("#searchText").val() + "&opt=" + $("#searchOpt").val();
	})
});

	function submit(frm) {
		frm.submit();
	}
</script>
</head>
<body>
	<div class="container">
		<c:if test="${empty id }">
			<%@ include file="/WEB-INF/common/guestMenu.jspf"%>
		</c:if>
		<c:if test="${not empty id }">
			<%@ include file="/WEB-INF/common/memberMenu.jspf"%>
		</c:if>
		<%@ include file="/WEB-INF/common/communityMenu.jspf"%>
		<div>
			<div class="pt-5 pb-5 text-center bg-light">
				<h5 class="mb-0"><b>테마별 사진</b></h5>
				<div class="mt-3 input-group">
					<select class="form-control p-0" id="searchOpt" name="searchOpt">
						<option value="1" selected>제목</option>
						<option value="2">내용</option>
						<option value="3">작성자</option>
					</select> 
					<input id="searchText" type="text" class="form-control p-0" style="width: 150px" placeholder="검색어를 입력하세요">
					<div class="input-group-append">
						<button class="btn" id="searchBtn" type="button">검색</button>
					</div>
				</div>
			</div>
			<div class="form-inline pt-3">
				<form action="picture.jsp" onchange="submit(this.form)">
					<select class="form-control" name="orders">
						<option selected disabled>정렬</option>
						<option value="0">최근 인기순</option>
						<option value="1">역대 인기순</option>
						<option value="2">최신순</option>
					</select> <select class="form-control" name="residence">
						<option selected disabled>주거형태</option>
						<option value="0">원룸오피스텔</option>
						<option value="1">아파트</option>
						<option value="2">빌라연립</option>
						<option value="3">단독주택</option>
						<option value="4">사무공간</option>
						<option value="5">상업공간</option>
						<option value="6">기타</option>
					</select> <select class="form-control" name="space">
						<option selected disabled>공간</option>
						<option value="0">원룸</option>
						<option value="1">거실</option>
						<option value="2">침실</option>
						<option value="3">주방</option>
						<option value="4">욕실</option>
						<option value="5">아이방</option>
						<option value="6">서재작업실</option>
						<option value="7">베란다</option>
						<option value="8">사무공간</option>
						<option value="9">상업공간</option>
						<option value="10">가구소품</option>
						<option value="11">현관</option>
						<option value="12">외관기타</option>
					</select> <select class="form-control" name="sizes">
						<option selected disabled>평수</option>
						<option value="0">10평 미만</option>
						<option value="1">10평대</option>
						<option value="2">20평대</option>
						<option value="3">30평대</option>
						<option value="4">40평대</option>
						<option value="5">50평 이상</option>
					</select> <select class="form-control" name="style">
						<option selected disabled>스타일</option>
						<option value="0">모던</option>
						<option value="1">북유럽</option>
						<option value="2">빈티지</option>
						<option value="3">내추럴</option>
						<option value="4">프로방스로맨틱</option>
						<option value="5">클래식앤틱</option>
						<option value="6">한국아시아</option>
						<option value="7">유니크</option>
					</select>
				</form>
			</div>
		</div>
		<div class="row">
			<c:forEach items="${list }" var="vo">
			<div class="col-sm-3">
				<div class="profile row pt-4 pb-2">
					<div class="col-sm-2">
						<img style="border-radius: 40px" src="${pageContext.request.contextPath}/img/profileImg/${vo.profileImg }"
							width="40px" height="40px">
					</div>
					<div class="col-sm-10 align-self-center">
						<span><b>${vo.id }</b></span>
					</div>
				</div>
				<div class="thumbnail pb-2">
					<a href="pictureDetail.do?idx=${vo.pictureIdx }"> <img
						style="border-radius: 5px" src="${pageContext.request.contextPath}/img/knowhowThumbnail/${vo.thumbnail }"
						width="255px" height="255px">
					</a>
				</div>
				<div class="likes row pb-2 text-center">
					<div class="col-sm-4">
						<i class="far fa-heart"></i> ${vo.likeCnt }
					</div>
					<div class="col-sm-4">
						<i class="far fa-bookmark"></i> ${vo.scrapCnt }
					</div>
					<div class="col-sm-4">
						<i class="far fa-comment"></i> ${vo.c1Cnt + vo.c2Cnt }
					</div>
				</div>
				<div class="content">${vo.content }
				</div>
				<div class="comments pb-3 row">
					<div class="col-sm-2">
						<img style="border-radius: 30px" src="${pageContext.request.contextPath}/img/profileImg/${vo.lastestCoProfileimg }"
							width="30px" height="30px">
					</div>
					<div class="col-sm-10">
						<span><b>${vo.lastestCoId }</b></span> <span>${vo.lastestCoContent }</span>
					</div>
				</div>
			</div>
			</c:forEach>
		</div>
		<ul class="pagination justify-content-center pt-3 pb-2">
			<li class="page-item"><a class="page-link" href="#">이전</a></li>
			<li class="page-item active"><a class="page-link" href="#">1</a></li>
			<li class="page-item"><a class="page-link" href="#">2</a></li>
			<li class="page-item"><a class="page-link" href="#">3</a></li>
			<li class="page-item"><a class="page-link" href="#">다음</a></li>
		</ul>
		<%@ include file="/WEB-INF/common/footer.jspf" %>
	</div>
</body>
</html>