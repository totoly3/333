package com.kh.ccc.board.allTimeBoard.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.ccc.board.allTimeBoard.model.dao.AlltimeBoardDao;
import com.kh.ccc.common.model.vo.PageInfo;
@Service
public class AlltimeBoardServiceImpl implements AlltimeBoardService{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	private AlltimeBoardDao AlltimeBoardDao;
	
	
	//아래는 역대 수상작 
	@Override
	public ArrayList<Character> allTimeSelectList(PageInfo pi) {
		
		ArrayList<Character> aclist = AlltimeBoardDao.allTimeSelectList(sqlSession,pi);
		
		return aclist;
	}

}
