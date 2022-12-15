package com.kh.ccc.admin.model.service;

import java.util.ArrayList;

import com.kh.ccc.admin.model.vo.Member;

public interface AdminService {
	
	//회원 전체 리스트 조회
	ArrayList<Member> memberList();
	
	//회원수
	int selectListCount();

}
