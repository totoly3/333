package com.kh.ccc.admin.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

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

	
}
