package com.kh.ccc.member.model.service;

public interface MemberService {
	
	//게시판 리스트 조회
	//1.게시글의 총 개수 조회
	int selectListCount();
	//2.게시글 리스트 조회
	ArrayList<CharBoard> selectList(PageInfo pi);
	
	
	
}
