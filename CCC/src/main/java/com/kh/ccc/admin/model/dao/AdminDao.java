package com.kh.ccc.admin.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.ccc.admin.model.vo.Admin;
import com.kh.ccc.member.model.vo.Member;


@Repository
public class AdminDao {

	
	//회원 전체 리스트 조회
	public ArrayList<Member> memberList(SqlSessionTemplate sqlSession) {

		
		ArrayList<Member> mList =(ArrayList)sqlSession.selectList("memberMapper.memberList");
		
		return mList;
		
	}

	//회원수
	public int selectListCount(SqlSessionTemplate sqlSession) {
		
		int listCount =sqlSession.selectOne("memberMapper.selectListCount");
		
		return listCount;
	}

	
	//관리자리스트 조회 (특수관리자페이지)
	public ArrayList<Admin> adminList(SqlSessionTemplate sqlSession) {

		ArrayList<Admin> aList =(ArrayList)sqlSession.selectList("adminMapper.adminList");
		
		return aList;
		

	}

	//관리자 상세조회 (특수관리자페이지)
	public Admin detailAdmin(SqlSessionTemplate sqlSession, int ano) {

		return (Admin)sqlSession.selectOne("adminMapper.detailAdmin", ano);
		
	
	}

	
}
