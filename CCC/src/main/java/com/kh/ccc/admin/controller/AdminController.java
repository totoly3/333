package com.kh.ccc.admin.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.ccc.admin.model.service.AdminService;
import com.kh.ccc.admin.model.vo.Member;

@Controller
public class AdminController {
	
	@Autowired
	private AdminService adminService;
	
	
	
	@RequestMapping("mainAdmin.ad")
	public String mainAdmin() {
		
		return "admin/mainAdmin";
		
	}
	
	
	
	@RequestMapping("member.ad")
	public String memberList(Model model) {
		
		ArrayList<Member> mList = adminService.memberList();
		
		System.out.println(mList);
		
		
		model.addAttribute("mList",mList);
		
		return "admin/memberAdmin";
		
	}
	
	

	
}
