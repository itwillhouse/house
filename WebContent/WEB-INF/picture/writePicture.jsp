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
  <form action="/action_page.php">
    <div class="form-group form-inline">
      <select class="form-control mr-2" id="sel1" name="sellist1">
        <option selected disabled>평수</option>
        <option>10평 미만</option>
        <option>10평대</option>
        <option>20평대</option>
        <option>30평대</option>
        <option>40평대</option>
        <option>50평 이상</option>
      </select>   
      <select class="form-control mr-2" id="sel1" name="sellist1">
        <option selected disabled>주거형태</option>
        <option>원룸오피스텔</option>
        <option>아파트</option>
        <option>빌라연립</option>
        <option>단독주택</option>
        <option>사무공간</option>
        <option>상업공간</option>
        <option>기타</option>
      </select>  
      <select class="form-control" id="sel1" name="sellist1">
        <option selected disabled>스타일</option>
        <option>모던</option>
        <option>북유럽</option>
        <option>빈티지</option>
        <option>내추럴</option>
        <option>프로방스로맨틱</option>
        <option>클래식앤틱</option>
        <option>한국아시아</option>
        <option>유니크</option>
      </select>  
    </div>
    <div class="row border">
    <div class="col form-group mt-4 ml-2">
      <input type="file" class="form-control-file border" name="file">
      <img class="mt-3" src="166592706060596621.png" width="200px">
    </div>
    <div class="col">
    <select class="form-control mt-4 mb-3" id="sel1" name="sellist1">
        <option selected disabled>공간(필수)</option>
        <option>원룸</option>
        <option>거실</option>
        <option>침실</option>
        <option>주방</option>
        <option>욕실</option>
        <option>아이방</option>
        <option>서재작업실</option>
        <option>베란다</option>
        <option>사무공간</option>
        <option>상업공간</option>
        <option>가구소품</option>
        <option>현관</option>
        <option>외관기타</option>
      </select>  
    <textarea class="form-control mb-4" rows="8" id="comment">사진에 대해 설명해주세요</textarea>
    </div>
    </div>
    <div>
    <button type="button" class="btn  mt-3">공간 추가하기</button>
    <button style="float:right;" type="submit" class="btn  mt-3">올리기</button>
    </div>
  </form>
</div>
<%@ include file="/WEB-INF/common/footer.jspf" %>
</div>
</body>
</html>