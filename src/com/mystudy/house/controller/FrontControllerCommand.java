package com.mystudy.house.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mystudy.house.model.command.CartCommand;
import com.mystudy.house.model.command.CartDeleteCommand;
import com.mystudy.house.model.command.CategoryAllCommand;
import com.mystudy.house.model.command.CategoryCommand;
import com.mystudy.house.model.command.CategoryDtCommand;
import com.mystudy.house.model.command.CollectionsCommand;
import com.mystudy.house.model.command.CollectionsKCommand;
import com.mystudy.house.model.command.CollectionsPCommand;
import com.mystudy.house.model.command.Command;
import com.mystudy.house.model.command.CommunityCommand;
import com.mystudy.house.model.command.ExhibitionsCommand;
import com.mystudy.house.model.command.GoCartChangeCommand;
import com.mystudy.house.model.command.GoCartInsertCommand;
import com.mystudy.house.model.command.GoIdFindCommand;
import com.mystudy.house.model.command.GoInfoAddrCommand;
import com.mystudy.house.model.command.GoInfoConfirmCommand;
import com.mystudy.house.model.command.GoInfoEditCommand;
import com.mystudy.house.model.command.GoKnowhowEditCommand;
import com.mystudy.house.model.command.GoKnowhowWriteCommand;
import com.mystudy.house.model.command.GoLoginCommand;
import com.mystudy.house.model.command.GoPartnerRegisterCommand;
import com.mystudy.house.model.command.GoPictureWriteCommand;
import com.mystudy.house.model.command.GoPwChangeCommand;
import com.mystudy.house.model.command.GoPwResetCommand;
import com.mystudy.house.model.command.GoSignupCommand;
import com.mystudy.house.model.command.GoWithdrawCommand;
import com.mystudy.house.model.command.IdFindCommand;
import com.mystudy.house.model.command.InfoConfirmCommand;
import com.mystudy.house.model.command.InfoEditCommand;
import com.mystudy.house.model.command.KnowhowCommand;
import com.mystudy.house.model.command.KnowhowComment2DeleteCommand;
import com.mystudy.house.model.command.KnowhowComment2WriteCommand;
import com.mystudy.house.model.command.KnowhowCommentDeleteCommand;
import com.mystudy.house.model.command.KnowhowCommentWriteCommand;
import com.mystudy.house.model.command.KnowhowDeleteCommand;
import com.mystudy.house.model.command.KnowhowDetailCommand;
import com.mystudy.house.model.command.KnowhowEditCommand;
import com.mystudy.house.model.command.KnowhowLikeCommand;
import com.mystudy.house.model.command.KnowhowScrapCommand;
import com.mystudy.house.model.command.KnowhowSearchCommand;
import com.mystudy.house.model.command.KnowhowWriteCommand;
import com.mystudy.house.model.command.ListCommand;
import com.mystudy.house.model.command.LoginCommand;
import com.mystudy.house.model.command.LogoutCommand;
import com.mystudy.house.model.command.MostbestranksCommand;
import com.mystudy.house.model.command.MyAnswerCommand;
import com.mystudy.house.model.command.MyRequestCommand;
import com.mystudy.house.model.command.MyknowhowCommand;
import com.mystudy.house.model.command.OrderCommand;
import com.mystudy.house.model.command.OrderCompleteCommand;
import com.mystudy.house.model.command.OrderCompletedCommand;
import com.mystudy.house.model.command.OrderOneCommand;
import com.mystudy.house.model.command.PartnerRegisterCommand;
import com.mystudy.house.model.command.PdetailCommand;
import com.mystudy.house.model.command.PictureCommand;
import com.mystudy.house.model.command.PictureComment2DeleteCommand;
import com.mystudy.house.model.command.PictureComment2WriteCommand;
import com.mystudy.house.model.command.PictureCommentDeleteCommand;
import com.mystudy.house.model.command.PictureCommentWriteCommand;
import com.mystudy.house.model.command.PictureDeleteCommand;
import com.mystudy.house.model.command.PictureDetailCommand;
import com.mystudy.house.model.command.PictureLikeCommand;
import com.mystudy.house.model.command.PictureScrapCommand;
import com.mystudy.house.model.command.PictureWriteCommand;
import com.mystudy.house.model.command.PrivacyPolicyCommand;
import com.mystudy.house.model.command.ProfileCommand;
import com.mystudy.house.model.command.ProfileImgChangeCommand;
import com.mystudy.house.model.command.PwChangeCommand;
import com.mystudy.house.model.command.RequestCommand;
import com.mystudy.house.model.command.SignupCommand;
import com.mystudy.house.model.command.UsePolicyCommand;
import com.mystudy.house.model.command.WithdrawCommand;
import com.mystudy.house.model.command.bestranksCommand;

@WebServlet("*.do")
public class FrontControllerCommand extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uri = request.getRequestURI();
		String conPath = request.getContextPath();
		String com = uri.substring(conPath.length());
		
		Command command = null;
		
		// Member
		if(com.equals("/community.do")) {
			command = new CommunityCommand();
		} else if(com.equals("/login.do")) {
			command = new LoginCommand();
		} else if(com.equals("/goLogin.do")) {	
		command = new GoLoginCommand();
		} else if(com.equals("/logout.do")) {	
			command = new LogoutCommand();		
		} else if(com.equals("/idFind.do")) {	
			command = new IdFindCommand();
		} else if(com.equals("/goIdFind.do")) {	
			command = new GoIdFindCommand();
		} else if(com.equals("/infoConfirm.do")) {	
			command = new InfoConfirmCommand();
		} else if(com.equals("/goInfoConfirm.do")) {	
			command = new GoInfoConfirmCommand();
		} else if(com.equals("/goPwReset.do")) {	
			command = new GoPwResetCommand();
		} else if(com.equals("/signup.do")) {	
			command = new SignupCommand();
		} else if(com.equals("/usePolicy.do")) {	
			command = new UsePolicyCommand();			
		} else if(com.equals("/privacyPolicy.do")) {	
			command = new PrivacyPolicyCommand();			
		} else if(com.equals("/goSignup.do")) {	
			command = new GoSignupCommand();
		} else if(com.equals("/partnerRegister.do")) {
			command = new PartnerRegisterCommand();
		} else if(com.equals("/goPartnerRegister.do")) {
			command = new GoPartnerRegisterCommand();
		// Mypage 
		} else if(com.equals("/infoEdit.do")) {
			command = new InfoEditCommand();
		} else if(com.equals("/goInfoEdit.do")) {
			command = new GoInfoEditCommand();
		} else if(com.equals("/pwChange.do")) {
			command = new PwChangeCommand();
		} else if(com.equals("/goPwChange.do")) {
			command = new GoPwChangeCommand();
		} else if(com.equals("/withdraw.do")) {
			command = new WithdrawCommand();
		} else if(com.equals("/goWithdraw.do")) {
			command = new GoWithdrawCommand();
		} else if(com.equals("/profileImgChange.do")) {	
			command = new ProfileImgChangeCommand();
		// Knowhow
		} else if(com.equals("/knowhow.do")) {
			command = new KnowhowCommand();
		} else if(com.equals("/knowhowWrite.do")) {
			command = new KnowhowWriteCommand();
		} else if(com.equals("/goKnowhowWrite.do")) {
			command = new GoKnowhowWriteCommand();
		} else if(com.equals("/knowhowDetail.do")) {
			command = new KnowhowDetailCommand();
		} else if(com.equals("/knowhowLike.do")) {
			command = new KnowhowLikeCommand();
		} else if(com.equals("/knowhowScrap.do")) {
			command = new KnowhowScrapCommand();
		} else if(com.equals("/knowhowDelete.do")) {
			command = new KnowhowDeleteCommand();
		} else if(com.equals("/knowhowEdit.do")) {
			command = new KnowhowEditCommand();
		} else if(com.equals("/goKnowhowEdit.do")) {
			command = new GoKnowhowEditCommand();	
		} else if(com.equals("/knowhowCommentWrite.do")) {
			command = new KnowhowCommentWriteCommand();
		} else if(com.equals("/knowhowComment2Write.do")) {
			command = new KnowhowComment2WriteCommand();			
		} else if(com.equals("/knowhowCommentDelete.do")) {
			command = new KnowhowCommentDeleteCommand();	
		} else if(com.equals("/knowhowComment2Delete.do")) {
			command = new KnowhowComment2DeleteCommand();	
		} else if(com.equals("/knowhowSearch.do")) {
			command = new KnowhowSearchCommand();	
		// Picture
		} else if(com.equals("/picture.do")) {
			command = new PictureCommand();
		} else if(com.equals("/pictureWrite.do")) {
			command = new PictureWriteCommand();
		} else if(com.equals("/goPictureWrite.do")) {
			command = new GoPictureWriteCommand();
		} else if(com.equals("/pictureDetail.do")) {
			command = new PictureDetailCommand();
		} else if(com.equals("/pictureLike.do")) {
			command = new PictureLikeCommand();
		} else if(com.equals("/pictureScrap.do")) {
			command = new PictureScrapCommand();
		} else if(com.equals("/pictureDelete.do")) {
			command = new PictureDeleteCommand();
		} else if(com.equals("/pictureEdit.do")) {
			//
		} else if(com.equals("/goPictureEdit.do")) {
			//
		} else if(com.equals("/pictureCommentWrite.do")) {
			command = new PictureCommentWriteCommand();
		} else if(com.equals("/pictureComment2Write.do")) {
			command = new PictureComment2WriteCommand();			
		} else if(com.equals("/pictureCommentDelete.do")) {
			command = new PictureCommentDeleteCommand();	
		} else if(com.equals("/pictureComment2Delete.do")) {
			command = new PictureComment2DeleteCommand();	
		} else if(com.equals("/pictureSearch.do")) {
			//
		// Request
		} else if(com.equals("/request.do")) {
			command = new RequestCommand();
				
				
			
			
			
		// store ----------	
		} else if(com.equals("/store.do")) {
			command = new ListCommand();
		// category	
		} else if(com.equals("/categoryAll.do")) {
			command = new CategoryAllCommand();
		} else if(com.equals("/category.do")) {
			command = new CategoryCommand();
		} else if(com.equals("/categorydt.do")) {
			command = new CategoryDtCommand();
		// bestranks 실시간베스트
		} else if(com.equals("/bestranks.do")) {
			command = new bestranksCommand();
		// mostbest	역대베스트
		} else if(com.equals("/mostbest.do")) {
			command = new MostbestranksCommand();
		// pdetail 상품상세페이지
		} else if(com.equals("/pdetail.do")) {
			command = new PdetailCommand();
		// profile 내가 쓴 사진글 
		} else if(com.equals("/profile.do")) {
			command = new ProfileCommand();
		// profile 내가 쓴 노하우	
		} else if(com.equals("/myknowhow.do")) {
			command = new MyknowhowCommand();
		// profile 내가 쓴 질문	
		} else if(com.equals("/myquestions.do")) {
			command = new MyRequestCommand();
		// profile 내가 쓴 답변	
		} else if(com.equals("/myanswer.do")) {
			command = new MyAnswerCommand();
		// 스크랩북	
		} else if(com.equals("/collections.do")) {
			command = new CollectionsCommand();
		// 사진 스크랩 조회
		} else if(com.equals("/collectionsP.do")) {
			command = new CollectionsPCommand();
		// 노하우 스크랩 조회	
		} else if(com.equals("/collectionsK.do")) {
			command = new CollectionsKCommand();
		// 기획전 페이지 이동	
		} else if(com.equals("/exhibitions.do")) {
			command = new ExhibitionsCommand();
		// 카트 넣기
		} else if(com.equals("/goCartInsert.do")) {
			command = new GoCartInsertCommand();
		// 카트에 넣은 상품확인	
		} else if(com.equals("/cart.do")) {
			command = new CartCommand();
		// 카트 상품 삭제	
		} else if(com.equals("/cartDelete.do")) {
			command = new CartDeleteCommand();
		// 카트 수량 변경	
		} else if(com.equals("/cartChange.do")) {
			command = new GoCartChangeCommand();
		// 주문하기 이동	
		} else if(com.equals("/order.do")) {
			command = new OrderCommand();
		// 바로 주문 이동	
		} else if(com.equals("/orderOne.do")) {
			command = new OrderOneCommand();
		// 배송정보 수정	
		} else if(com.equals("/orderAddr.do")) {
			command = new GoInfoAddrCommand();
		// 주문완료 페이지	
		} else if(com.equals("/complete.do")) {
			command = new OrderCompleteCommand();
		// 오더완료	
		} else if(com.equals("/completed.do")) {
			command = new OrderCompletedCommand();
		} 
		
		
		
		
		
		
		
		
		
		String path = command.exec(request, response);
		try {
			request.getRequestDispatcher(path).forward(request, response);
		} catch(Exception e) {
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		doGet(request, response);
	}

}
