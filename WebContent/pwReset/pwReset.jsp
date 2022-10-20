<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>오늘의집 - 비밀번호 재설정</title>
	<%@ include file="../common/style.jspf" %>
  	<style>
  		.community, .store {
  			color: black;
  		}
  		.home, .picture, .knowhow, .qna {
  			color: black;
  		}
  		html, body {
			height: 100%;
		}
	</style>
</head>
<body>
	<div class="container">
		<%@ include file="../common/navbar_guest.jspf" %>
		<div class="container-fluid">
			<h3 class="text-center pt-4 pb-3">비밀번호 재설정</h3>
			<form class="pb-3" action="#" method="post">
				<div class="form-group text-center">
					<label for="id"><b>아이디</b></label>
					<input type="text" class="form-control w-25 m-auto" id="id" placeholder="아이디" name="id">
    			</div>
            	<div class="form-group text-center">
					<label for="name"><b>이름</b></label>
					<input type="text" class="form-control w-25 m-auto" id="name" placeholder="이름" name="name">
    			</div>
    			<div class="form-group text-center">
    				<label for="email"><b>이메일</b></label>
    				<input type="email" class="form-control w-25 m-auto" id="email" placeholder="이메일" name="email">
    			</div>
    			<div class="text-center pt-3">
    				<button type="submit" class="btn w-25" id="btn">비밀번호 재설정</button>
    			</div>	  
          	</form>
		</div>
	</div>
</body>
</html>