package com.kh.ccc.admin.model.service;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.ccc.admin.model.dao.AdminDao;
import com.kh.ccc.admin.model.vo.Member;


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




}
