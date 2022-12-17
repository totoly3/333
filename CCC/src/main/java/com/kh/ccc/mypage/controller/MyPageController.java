package com.kh.ccc.mypage.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.ccc.mypage.model.service.MyPageService;

@Controller
public class MyPageController{


//	@Autowired
//	private MyPageService mypageService;
 
 
	//마이페이지 조회
	@RequestMapping("mypage.me")
	public String myPage() {
		return "mypage/mypage";
	}
	
//	@RequestMapping("profileEnroll.me")
//	public String profile() {
//		
//		int mNo=57; //임의로 넣어둠
//		
//		//회원정보 조회해옴
//		Member profile=service.selectProfile();
//		
//		return "mypage/profile";
//	}
	
	
	@RequestMapping("profileEnroll.me")
	public String profile() {
		
		return "mypage/profile";
	}
	
	
	@RequestMapping("mychar.me")
	public String myCharpage() {
		
		return "mypage/mychar";
	}
	
	
	
	
//	//마이페이지 
//	@RequestMapping("mypage.me")
//	public String updateMember(Member m,HttpSession session, Model model) {
//	}
	

}
