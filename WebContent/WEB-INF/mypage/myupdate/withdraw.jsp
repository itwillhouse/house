<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원탈퇴 신청</title>
<%@ include file="/WEB-INF/common/style.jspf"%>
<style>
.community, .store {
color: black;
}
#mypage, #mysp, #myrv {
	color: black;
}

#myupdate	{
	color: #35C5F0;
	font-weight: bold;
}
.withdraw {
color: #35C5F0;
font-weight: bold;
}
.pwChange, .infoEdit {
	color: black;
}
</style>
</head>
<body>
<div class="container">
	<%@ include file="/WEB-INF/common/memberMenu.jspf" %>
	<%@ include file="/WEB-INF/common/mypageMenu.jspf" %>
	<%@ include file="/WEB-INF/common/myupdateMenu.jspf" %>
	<div>
		<h3 class="text-center pt-4 pb-3">회원탈퇴 신청</h3>
		<div>
			<div class="pb-3">
				<b>회원 탈퇴 신청에 앞서 아래 내용을 반드시 확인해주세요.</b>
			</div>
			<div class="border p-3">
				<b>회원탈퇴 시 처리내용</b>
				<ul>
					<li>오늘의집 포인트·쿠폰은 소멸되며 환불되지 않습니다.</li>
					<li>오늘의집 구매 정보가 삭제됩니다.</li>
					<li>소비자보호에 관한 법률 제6조에 의거,계약 또는 청약철회 등에 관한 기록은 5년, 대금결제 및 재화등의 공급에 관한 기록은 5년, 소비자의 불만 또는 분쟁처리에 관한 기록은 3년 동안 보관됩니다. 동 개인정보는 법률에 의한 보유 목적 외에 다른 목적으로는 이용되지 않습니다.</li>
				</ul>
				<b>회원탈퇴 시 게시물 관리</b><br>
				<span>회원탈퇴 후 모두의집 서비스에 입력한 게시물 및 댓글은 삭제되지 않으며, 회원정보 삭제로 인해 작성자 본인을 확인할 수 없으므로 게시물 편집 및 삭제 처리가 원천적으로 불가능 합니다. 게시물 삭제를 원하시는 경우에는 먼저 해당 게시물을 삭제 하신 후, 탈퇴를 신청하시기 바랍니다.</span>
				<br><br>
				<b>회원탈퇴 후 재가입 규정</b><br>
				<span>탈퇴 회원이 재가입하더라도 기존의 모두의집 포인트는 이미 소멸되었기 때문에 양도되지 않습니다.</span>
			</div>	
		</div>
		<div class="pt-3">
			<form action="goWithdraw.do">
				<div class="form-check">
      				<label class="form-check-label" for="checkall">
        				<input type="checkbox" class="form-check-input" name="terms" value="agree" required>위 내용을 모두 확인하였습니다.
      				</label>
    			</div>
    			<div class="pt-3 pb-3">
    				<button type="submit" class="btn btn-light">탈퇴신청</button>
					<button type="button" class="btn" id="btn" onclick="location.href='withdraw.do'">취소하기</button>
    			</div>
			</form>
		</div>
	</div>
	<%@ include file="/WEB-INF/common/footer.jspf" %>
</div>
</body>
</html>