<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="/WEB-INF/common/style.jspf"%>
<link href="${pageContext.request.contextPath}/summernote/summernote-bs4.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/summernote/summernote-bs4.js"></script>
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
  <script>
  $(document).ready(function() {
	  $('#summernote').summernote({
		  height: 300,                 // set editor height
		  minHeight: null,             // set minimum height of editor
		  maxHeight: null,             // set maximum height of editor
		  focus: true,                  // set focus to editable area after initializing summernote
		  toolbar: [
			    // [groupName, [list of button]]
			  ]
	  });
	  
	});
  </script>
</head>
<body>
  <div class="container">
<%@ include file="/WEB-INF/common/memberMenu.jspf" %>
<%@ include file="/WEB-INF/common/communityMenu.jspf"%>
<div class="mt-3 mb-1">
  <form action="goPictureEdit.do" method="post">
    <div class="form-group form-inline">
      <select class="form-control mr-2" id="sizes" name="sizes">
        <option selected disabled>평수</option>
        <c:forEach items="${sizesMenu }" var="m" varStatus="status">
        	<c:if test="${vo.sizes == status.index }">
        		<option value="${vo.sizes }" selected>${m }</option>
        	</c:if>
        	<c:if test="${vo.sizes != status.index }">
        		<option value="${vo.sizes }">${m }</option>
        	</c:if>
        </c:forEach>
      </select>   
      <select class="form-control mr-2" id="residence" name="residence">
        <option selected disabled>주거형태</option>
        <c:forEach items="${residenceMenu }" var="m" varStatus="status">
        	<c:if test="${vo.sizes == status.index }">
        		<option value="${vo.sizes }" selected>${m }</option>
        	</c:if>
        	<c:if test="${vo.sizes != status.index }">
        		<option value="${vo.sizes }">${m }</option>
        	</c:if>
        </c:forEach>
      </select>  
      <select class="form-control" id="style" name="style">
        <option selected disabled>스타일</option>
        <c:forEach items="${styleMenu }" var="m" varStatus="status">
        	<c:if test="${vo.sizes == status.index }">
        		<option value="${vo.sizes }" selected>${m }</option>
        	</c:if>
        	<c:if test="${vo.sizes != status.index }">
        		<option value="${vo.sizes }">${m }</option>
        	</c:if>
        </c:forEach>
      </select>  
    </div>
    <div class="row border">
    <div class="col form-group mt-4 ml-2">
      <input type="file" class="form-control-file border" name="file">
      <img class="mt-3" src="../imgs/166592706060596621.png" width="200px">
    </div>
    <div class="col">
    <select class="form-control mt-4 mb-3" id="space" name="space">
        <option selected disabled>공간(필수)</option>
        <c:forEach items="${spaceMenu }" var="m" varStatus="status">
        	<c:if test="${vo.sizes == status.index }">
        		<option value="${vo.sizes }" selected>${m }</option>
        	</c:if>
        	<c:if test="${vo.sizes != status.index }">
        		<option value="${vo.sizes }">${m }</option>
        	</c:if>
        </c:forEach>
      </select>  
    <textarea class="form-control mb-4" rows="8" id="summernote" name="editordata">${vo.content }</textarea>
    </div>
    </div>
    <div class="mb-4">
    <input type="hidden" name="idx" value="${vo.pictureIdx }">
    <button type="submit" class="btn mt-3" id="btn">올리기</button>
    </div>
  </form>
</div>
<%@ include file="/WEB-INF/common/footer.jspf" %>
</div>
</body>
</html>