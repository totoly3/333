package com.kh.ccc.board.freeboard.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.ccc.board.freeboard.model.dao.FrBoardDao;
import com.kh.ccc.board.freeboard.model.vo.FrBoard;
import com.kh.ccc.common.model.vo.PageInfo;
@Service
public class FrBoardServiceImpl implements FrBoardService{

	@Autowired
	private FrBoardDao FrBoardDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	// 아래는 게시글 총개수
	@Override
	public int selectListCount() {
		
		int listCount =FrBoardDao.selectListCount(sqlSession);
		
		return listCount;
	}
	
	//아래는 게시글 리스트 조회 
	@Override
	public ArrayList<FrBoard> selectList(PageInfo pi) {
		return FrBoardDao.selectList(sqlSession,pi);
		
	}
	
//	//아래는 게시글 작성 (사진포함)
//	@Override
//	public int insertBoard(FrBoard b) {
//		// TODO Auto-generated method stub
//		return 0;
//	}
//	//아래는 //게시글 상세 조회
//	@Override
//	public FrBoard boardDetailView(int bno) {
//		// TODO Auto-generated method stub
//		return null;
//	}
//	//아래는 게시글 조회수 증가 
//	@Override
//	public int increaseCount(int BoardNo) {
//		// TODO Auto-generated method stub
//		return 0;
//	}
//	
//	//아래는 게시물 상세 보기 -선생님  -현재 선생님 버전으로 진행중
//	@Override
//	public FrBoard selectBoard(int BoardNo) {
//		// TODO Auto-generated method stub
//		return null;
//	}
//	
//	//게시글 삭제 
//	@Override
//	public int deleteBoard(int bno) {
//		// TODO Auto-generated method stub
//		return 0;
//	}
//	
//	//게시글 수정
//	@Override
//	public int updateBoard(FrBoard fb) {
//		// TODO Auto-generated method stub
//		return 0;
//	}

}
