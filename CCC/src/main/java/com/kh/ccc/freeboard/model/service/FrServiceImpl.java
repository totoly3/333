package com.kh.ccc.freeboard.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.ccc.common.model.vo.PageInfo;
import com.kh.ccc.freeboard.model.vo.FrBoard;

public class FrServiceImpl implements FrService {

	@Autowired
	private SqlSessionTemplate sqlSession;

	

	@Override
	public ArrayList<FrBoard> selectList(PageInfo pi) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insertBoard(FrBoard fb) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public FrBoard boardDetailView(int bno) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int increaseCount(int BoardNo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public FrBoard selectBoard(int BoardNo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int deleteBoard(int bno) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateBoard(FrBoard b) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int selectListCount() {
		// TODO Auto-generated method stub
		return 0;
	}	
	
}
