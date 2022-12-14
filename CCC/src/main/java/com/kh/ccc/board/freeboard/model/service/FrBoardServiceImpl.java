package com.kh.ccc.board.freeboard.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.ccc.board.freeboard.model.dao.FrBoardDao;
import com.kh.ccc.board.freeboard.model.vo.FrBoard;
import com.kh.ccc.board.freeboard.model.vo.FrBoardAttach;
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
//	//아래는 //게시글 상세 조회
	@Override
	public int increaseCount(int fno) {
		return FrBoardDao.increaseCount(sqlSession,fno);
	
	}
	//아래는 게시판 상세 보기 
		@Override
		public FrBoard frboardDetailView(int fno) {
			return FrBoardDao.frboardDetailView(sqlSession,fno);
			
		}
		
	//아래는 게시글 등록 	(글만)
		@Override
		public int insertFrBoard1(FrBoard fb) {
			return FrBoardDao.insertFrBoard1(sqlSession,fb);
			
		}
	//아래는 게시글 등록 (사진)
		@Override
		public int insertAttFrBoard2(FrBoardAttach fab) {
		
			return FrBoardDao.insertAttFrBoard2(sqlSession,fab);
		}
	



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
