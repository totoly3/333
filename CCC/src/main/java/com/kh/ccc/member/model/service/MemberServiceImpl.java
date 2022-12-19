package com.kh.ccc.member.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.ccc.member.model.dao.MemberDao;
import com.kh.ccc.member.model.vo.Member;

@Service
public class MemberServiceImpl implements MemberService{
	
	@Autowired
	private MemberDao memberDao;

	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public Member loginMember(Member m) {
		
        Member loginUser=memberDao.loginMember(sqlSession,m);
        
		return loginUser;
	}
	
	
	
	

}
