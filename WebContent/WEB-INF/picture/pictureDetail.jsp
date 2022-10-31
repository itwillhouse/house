<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="/WEB-INF/common/style.jspf" %>
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
<%@ include file="/WEB-INF/common/memberMenu.jspf" %>
	<%@ include file="/WEB-INF/common/communityMenu.jspf" %>
	<div class="container-fluid mt-3 mb-1">
		<div class="mb-4"><a href="#">20평대</a> | <a href="#">내추럴 스타일</a> | <a href="#">아파트</a></div>
		<div class="mb-4">
			<button class="btn " onclick="location.href='writePicture.jsp'">수정</button>
			<button class="btn " data-toggle="modal" data-target="#myModal">삭제</button>
			<!-- The Modal -->
			<div class="modal" id="myModal">
  				<div class="modal-dialog">
    				<div class="modal-content">
      				<!-- Modal Header -->
      					<div class="modal-header">
        					<h4 class="modal-title">사진글 삭제</h4>
        					<button type="button" class="close" data-dismiss="modal">&times;</button>
      					</div>
      				<!-- Modal body -->
      					<div class="modal-body">
        					정말로 삭제하시겠습니까?
      					</div>
      				<!-- Modal footer -->
      					<div class="modal-footer">
        					<button type="button" class="btn btn-danger" data-dismiss="modal">삭제</button>
        					<button type="button" class="btn " data-dismiss="modal">취소</button>
      					</div>
    				</div>
  				</div>
			</div>
		</div>
		<img class="mb-3" src="../imgs/166592706060596621.png" width="100%" height="100%">
		<div class="mb-3">
			간만에 대청소도 하고 침구도 바꾸고 힘들었지만 행복 그잡채🤓🍀
		</div>
		<div class="mb-3">
			<a href="#">#오늘의기록</a>
			<a href="#">#오하우스</a>
			<a href="#">#침구세트</a>
		</div>
		<div class="mb-5">
		<div style="float:left;">조회수 320</div>
		<div style="float:right;">
			<a href="#">좋아요</a>
			<a href="#">스크랩</a>
		</div>
		</div>
		<div style="clear:both">
			<hr>
			<div><b>댓글 5</b></div>
			<form class="mt-3" action="/action_page.php">
  				<div class="row">
    				<div class="col-sm-11"><input type="text" class="form-control" placeholder="칭찬과 격려의 댓글은 작성자에게 큰 힘이 됩니다 :)" id="comment">
  				</div>
  				<div class="col-sm-1"><button type="submit" class="btn ">입력</button></div>
  				</div>
			</form>
			<div class="comments mt-4">
				<div class="comment row mb-4">
    				<div class="col-sm-1">
    					<img style="border-radius: 30px" src="../imgs/166592706060596621.png" width="30px" height="30px">
    				</div>
    				<div class="col-sm-11">
    					<span><b>mh24</b></span><br>
    					<span>단조로울 수 있는 인테리어에 블루 한방울 색을 입혀주니 청량하고 생기있어 보이는 공간이 된것 같아요</span><br>
    					<span>5일 전</span>&nbsp;&nbsp;
    					<a href="#">♡</a> 4&nbsp;&nbsp;
    					<a href="#" data-toggle="collapse" data-target="#demo">답글 달기</a>
    					<div id="demo" class="collapse">
    					<form class="mt-3" action="/action_page.php">
  				<div class="row">
    				<div class="col-sm-10"><input type="text" class="form-control" placeholder="칭찬과 격려의 댓글은 작성자에게 큰 힘이 됩니다 :)" id="comment">
  				</div>
  				<div class="col-sm-2"><button type="submit" class="btn ">입력</button></div>
  				</div>
			</form>
    					</div>
    				</div>  	
    			</div>
    			<div class="comment row mb-4">
    				<div class="col-sm-1">
    					<img style="border-radius: 30px" src="../imgs/166592706060596621.png" width="30px" height="30px">
    				</div>
    				<div class="col-sm-11">
    					<span><b>mh24</b></span><br>
    					<span>단조로울 수 있는 인테리어에 블루 한방울 색을 입혀주니 청량하고 생기있어 보이는 공간이 된것 같아요</span><br>
    					<span>5일 전</span>&nbsp;&nbsp;
    					<a href="#">♡</a> 6&nbsp;&nbsp;
    					<a href="#">답글 달기</a>
    				</div>  	
    			</div>
			</div>
		</div>
	</div>
	<%@ include file="/WEB-INF/common/footer.jspf" %>
</div>
</body>
</html>