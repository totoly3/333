package com.kh.ccc.board.allTimeBoard.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.ccc.board.allTimeBoard.model.dao.AlltimeBoardDao;
import com.kh.ccc.common.model.vo.PageInfo;
import com.kh.ccc.mypage.model.vo.MyCharacterAttach;
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

	//아래는 db에서 첨부파일 이미지 불러오려고 ! 
	@Override
	public ArrayList<MyCharacterAttach> myAllTimeBoard() {
		
		ArrayList<MyCharacterAttach> myca = AlltimeBoardDao.myAllTimeBoard(sqlSession);
		System.out.println("myca 서비스"+myca);
		return myca;
	}

}
