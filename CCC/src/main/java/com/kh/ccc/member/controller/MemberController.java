package com.kh.ccc.member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.ccc.member.model.service.MemberService;
import com.kh.ccc.member.model.vo.Member;

@Controller
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	 	//로그인 폼 이동
		@RequestMapping("loginform.me")
		public String loginForm() { 
			
			return "member/loginForm";
		}
		
		//실제 로그인
		@RequestMapping("login.me")
		public String loginMember(Member m,HttpSession session) {
			
			Member loginUser=memberService.loginMember(m);
			if (loginUser!=null) { //로그인 성공시
				session.setAttribute("loginUser", loginUser);
			}
			
//			return "mypage/mypage"; // 지은 개발용
			return "redirect:/";
		}
	
		//회원가입폼이동
		@RequestMapping("enrollForm.me")
		public String enrollForm() {
			
			return "member/enrollForm";
			
		}
		
		
		//실제 회원가입
		@PostMapping("insert.me")
		public String insertMember(Member m,HttpSession session,Model model) {
			
			int result=memberService.insertMember(m);
			
			if (result>0) {
				session.setAttribute("alertMsg", "회원가입이 완료되었습니다.");
				return "redirect:/";
				
			} else {
				model.addAttribute("errorMsg","회원가입 실패");
				return "common/errorPage";
			}
			
		}
		
		
		//아이디체크
		@RequestMapping(value = "IdCheck.do",produces = "test/html;charset=UTF-8")
		public String idCheck(String userId) {
			
			int count=memberService.idCheck(userId);
			
			return count>0? "NNNNN": "NNNNY";
			
		} 
		
		
		//아래는 로그아웃 	
		@RequestMapping("logout.me")
		public String logOutMember(HttpSession session){
			//	session.invalidate();  둘중하나 쓰면됨   
			session.removeAttribute("loginUser");
			return "redirect:/";
			
		}
		

}
