<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>커뮤니티</title>
<%@ include file="/WEB-INF/common/style.jspf"%>
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
<script>
    $(document).ready(function(){
        let $list = $("#slide_list");
        
        //앞의 이미지 3개를 복사해서 맨 뒤에 붙이기
        $list.append($("#slide_item:lt(3)").clone());
        
        let clickCnt = 0;
        $("#next").click(function(){
            $list.stop(true); //기존 애니메이션 있으면 중지(큐삭제)
            clickCnt++;
            if (clickCnt > 10) {
                $list.css("margin-left", "0px");
                clickCnt = 1;
            }
            $list.animate({"margin-left": -270 * clickCnt + "px"}, 300);
        });      
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
	<div class="pb-4">
		<div class="pt-5">
			<img width="100%" height="400px">
		</div>
		<div class="pt-5">
			<h5>카테고리별 상품 찾기</h5>
		</div>
		<div class="pt-5">
			<h5>인기 사진 TOP 10</h5>
		</div>
		<div class="pt-5">
			<h5>인기 노하우 TOP 10</h5>
		</div>
		<div class="pt-5">
			<h5>인기 질문과답변 TOP 10</h5>
		</div>
	</div>
	<%@ include file="/WEB-INF/common/footer.jspf" %>
</div>
</body>
</html>