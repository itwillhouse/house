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
  .picture {
  	color: #35C5F0;
  	font-weight: bold;
  }
  .home, .knowhow, .qna {
  color: black;
  }
  </style>
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
	<div class="pb-4">
		<div class="pt-4">
			<a href="#">${residenceMenu[vo.residence] }</a>&nbsp;&nbsp;|&nbsp;
			<a href="#">${spaceMenu[vo.space] }</a>&nbsp;&nbsp;|&nbsp;
			<a href="#">${sizesMenu[vo.sizes] }</a>&nbsp;&nbsp;|&nbsp;
			<a href="#">${styleMenu[vo.style] }</a>
		</div>
		<c:if test="${id == vo.id }">
		<div class="pt-3 pb-2">
			<button class="btn" id="btn" onclick="location.href='pictureEdit.do?idx=${idx}'">수정</button>
			<button class="btn" id="btn" data-toggle="modal" data-target="#myModal">삭제</button>
			<!-- The Modal -->
			<div class="modal" id="myModal">
  				<div class="modal-dialog">
    				<div class="modal-content">
      				<!-- Modal Header -->
      					<div class="modal-header">
        					<h4 class="modal-title">노하우글 삭제</h4>
        					<button type="button" class="close" data-dismiss="modal">&times;</button>
      					</div>
      				<!-- Modal body -->
      					<div class="modal-body">
        					정말로 삭제하시겠습니까?
      					</div>
      				<!-- Modal footer -->
      					<div class="modal-footer">
        					<button type="button" class="btn btn-outline-secondary" data-dismiss="modal">취소</button>
        					<button type="button" class="btn btn-primary" onclick="location.href='pictureDelete.do?idx=${idx}&cPage=${cPage}'" data-dismiss="modal">삭제</button>
      					</div>
    				</div>
  				</div>
			</div>
		</div>
		</c:if>
		<div class="profile row pt-3">
    		<div class="col-sm-1" style="text-align: right">
    			<img style="border-radius: 40px" src="${pageContext.request.contextPath}/img/profileImg/${vo.profileImg}" width="40px" height="40px">
    		</div>
    		<div class="col-sm-11">
    			<span><b>${vo.id }</b></span><br>
    			<span><small>${vo.regdate }</small></span>
    		</div>
    	</div>
    	<div class="pt-3 pb-2">
			<span>${vo.content }</span>
		</div>
		<div>
			<div style="float:left; color: gray;">좋아요 ${vo.likeCnt } 스크랩 ${vo.scrapCnt} 댓글 ${vo.c1Cnt + vo.c2Cnt} 조회수 ${vo.views }</div>
			<c:if test="${id != vo.id }">
				<div style="float:right;" class="pb-2">
					<button type="button" class="btn btn-outline-secondary btn-sm mt-2" onclick="location.href='knowhowLike.do?idx=${idx}'">
    					좋아요
  					</button>
					<button type="button" class="btn btn-outline-secondary btn-sm mt-2" onclick="location.href='knowhowScrap.do?idx=${idx}'">
						스크랩
					</button>
				</div>
			</c:if>
		</div>
		<!-- 댓글 -->
	</div>
	<%@ include file="/WEB-INF/common/footer.jspf" %>
</div>
</body>
</html>