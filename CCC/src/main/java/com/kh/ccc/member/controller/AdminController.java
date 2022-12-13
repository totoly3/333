package com.kh.ccc.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {
	
	@RequestMapping("mainAdmin.me")
	public String mainAdmin() {
		
		return "admin/mainAdmin";
		
	}
	
	
	@RequestMapping("member.me")
	public String member() {
		
		return "admin/memberAdmin";
		
	}
	
	
}
