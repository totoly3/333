package com.kh.ccc.admin.model.service;

import java.util.ArrayList;
import java.util.List;

import com.kh.ccc.admin.model.vo.Admin;
import com.kh.ccc.member.model.vo.Member;


public interface AdminService {
	
	//회원 전체 리스트 조회
	ArrayList<Member> memberList();
	
	//회원수
	int selectListCount();

	//관리자리스트 조회 (특수관리자페이지)
	ArrayList<Admin> adminList();

	//관리자 상세조회 (특수관리자페이지)
	Admin detailAdmin(int ano);

	//일반회원 check회원들 차단삭제
	int deleteMemberList(List<String> checkBoxArr);


	


}
