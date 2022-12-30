package com.kh.ccc.admin.model.service;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.ccc.admin.model.dao.AdminDao;
import com.kh.ccc.admin.model.vo.Admin;
import com.kh.ccc.member.model.vo.Member;


@Service
public class AdminServiceImpl implements AdminService{
	
	@Autowired
	private AdminDao adminDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	
	
	//회원 전체 리스트 조회
	@Override
	public ArrayList<Member> memberList() {

		ArrayList<Member> mList = adminDao.memberList(sqlSession);
		
		return mList;
	}



	//회원수
	@Override
	public int selectListCount() {
		
		int listCount = adminDao.selectListCount(sqlSession);
		
		return listCount;
	}


	
	//관리자리스트 조회 (특수관리자페이지)
	@Override
	public ArrayList<Admin> adminList() {
		
		ArrayList<Admin> aList = adminDao.adminList(sqlSession);
		
		return aList;
	}



	//관리자 상세조회 (특수관리자페이지)
	@Override
	public Admin detailAdmin(int ano) {
		
		Admin a =adminDao.detailAdmin(sqlSession,ano);
		
		return a;
	}


	//일반회원 check회원들 차단삭제
	@Override
	public int deleteMemberList(List<String> checkBoxArr) {

		int result = adminDao.deleteMemberList(sqlSession,checkBoxArr);

		return result;
	}



	


}
