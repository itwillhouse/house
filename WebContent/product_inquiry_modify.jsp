<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	String proinIdx = request.getParameter("proinIdx");
%>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제품문의</title>
<style>
	#layout1 {
		width: 100%;
	}
	
	#layout1 .container1 {
		width: 1280px;
		margin: auto;
	}
	
	#layout1 .container1 .box1 {
		width: 600px;
		margin: 30px auto 30px auto;
		box-shadow: 1px 1px 2px 2px rgba(0, 0, 0, 0.2);
		border-radius: 10px;
	}
	
	
	#layout1 .container1 .box1 form table {
		border: 1px solid silver;
		margin: 5px auto 20px auto;
		border-radius: 10px;
	}
	
	#layout1 .container1 .box1 form table tr {
		border: 1px solid silver;
	}
	
	#layout1 .container1 .box1 form table tr td{
		border: 1px solid silver;

	}
	
	#layout1 .container1 .box1 form table tr td input{
		border: none;
		padding: 10px 65px;
		margin: 0px;
		background-color: white;
		}
		
		#layout1 .container1 .box1 form table tr td input:hover {
			opacity: 0.5;
			background-color: #f0f1f1;
		}
	
	#layout1 .container1 .box1 form table textarea {
		border: none;
	}
	
	.btn-upload:hover {
		opacity: 0.5;
		color: black;
		border: 1px solid black;
		cursor: pointer;
	}
	
	#submit{
		display:inline;
		border: none; 
		background-color: deepskyblue; 
		color: white; 
		border-radius: 5px; 
		padding: 9px 15px; 
		font-weight: bold; 
		font-size: 15px;
		margin-bottom: 20px;
		margin-top: 20px;
	}
	
	#submit:hover {
	opacity: 0.5;
}
	
	
</style>
<script type="text/javascript"> 
	function a(y){
	   if (y.defaultValue==y.value) {
	      y.value = "";
	   }
	}
</script>
<%@ include file="WEB-INF/common/style.jspf" %>
</head>
<body>
<%@ include file="WEB-INF/common/guestMenu.jspf" %>
<%@ include file="WEB-INF/common/storeMenu.jspf" %>

<div id="layout1">
	<div class="container1">
		<div class="box1">
			<form action="product_inquiry_modify_ok.jsp?proinIdx=<%=proinIdx %>" method="post" enctype="multipart/form-data">	
				<span style="font-weight: bold; display: block; margin-left: 250px; padding-top: 30px; padding-bottom: 10px; font-size: 18px;">상품 문의하기</span>
				<span style="font-weight: bold; margin-left: 50px; font-size: 14px;">문의 유형</span>
				<table>
					<tr>
						<td><input type="button" value="상품"></td>
						<td><input type="button" value="배송"></td>
						<td><input type="button" value="반품"></td>
					</tr>
					<tr>
						<td><input type="button" value="교환"></td>
						<td><input type="button" value="환불"></td>
						<td><input type="button" value="기타"></td>
					</tr>
				</table>
				
				<span style="font-weight: bold; margin-left: 50px; font-size: 14px;">문의 내용</span><br>
				<textarea name="comments" rows="6" cols="65" title="내용" onfocus="a(this)" style="display: block; margin: 5px auto 0px auto; border: 1px solid silver;" >내용을 입력하세요.</textarea><br>
				<span style="display: block; font-size: 12px; padding: 10px 55px; color: silver;">- 문의내용에 대한 답변은 ‘마이페이지 > 나의 쇼핑 > 나의 문의내역’ 또는 ‘상품 상세페이지’에서 확인 가능합니다.<br>
						- 배송,결제,교환/반품 문의는 고객센터로 문의 바랍니다.<br>
						- 상품과 관련 없거나 부적합한 내용을 기재하시는 경우, 사전 고지 없이 삭제 또는 차단될 수 있습니다.</span>
				<label for="file">
  						<div class="btn-upload" style="display:inline; border: none; background-color: deepskyblue; color: white; border-radius: 5px; padding: 10px 15px; font-weight: bold; font-size: 15px; margin-left: 160px;">파일 업로드하기</div>
					</label>
					<input type="file" name="fileName" id="file" style="display: none;">
				<input type="submit" name="submit" value="수정완료" id="submit">
			</form>
		</div>
	</div>
</div>




<%@ include file="WEB-INF/common/footer.jspf" %>
</body>
</html>