package com.itwillbs.member.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itwillbs.commons.Action;
import com.itwillbs.commons.ActionForward;
import com.itwillbs.commons.JSFoward;

public class MemberLogoutAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println(" M : MemberLogoutAction_execute() ");
		
		// 세션정보 초기화
		HttpSession session = request.getSession();
		session.invalidate();
		
		System.out.println(" M : 세션정보 초기화 완료! ");
		// 페이지 이동
		
		JSFoward.alertAndMove(response, "로그아웃 되었습니다.", "./Main.me");
		
		System.out.println(" M  : JS사용 페이지 이동");
		
		return null;
		
//		ActionForward forward = new ActionForward();
//		forward.setPath("./Main.me");
//		forward.setRedirect(true);
//		return forward;
		
	}
	
}
