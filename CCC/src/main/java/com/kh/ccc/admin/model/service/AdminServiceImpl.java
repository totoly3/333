package com.kh.ccc.admin.model.service;

import java.util.ArrayList;

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


	


}
