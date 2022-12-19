package com.kh.ccc.board.tipBoard.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.ccc.board.freeboard.model.dao.FrBoardDao;
import com.kh.ccc.board.tipBoard.model.vo.TipBoard;
import com.kh.ccc.board.tipBoard.model.vo.TipBoardAttach;
import com.kh.ccc.common.model.vo.PageInfo;
@Service
public class TipBoardServiceImpl implements TipBoardService{

	@Autowired
	private TipBoardDao TipBoardDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	// 아래는 게시글 총개수
	@Override
	public int selectListCount() {
		
		int listCount =TipBoardDao.selectListCount(sqlSession);
		
		return listCount;
	}
	
	//아래는 게시글 리스트 조회 
	@Override
	public ArrayList<TipBoard> selectList(PageInfo pi) {
		return TipBoardDao.selectList(sqlSession,pi);
		
	}
//	//아래는 //게시글 상세 조회
	@Override
	public int increaseCount(int fno) {
		return FrBoardDao.increaseCount(sqlSession,tno);
	
	}
	//아래는 게시판 상세 보기 
		@Override
		public ArrayList<TipBoard> tipboardDetailView(int tno) {
			ArrayList<TipBoard> list	=TipBoardDao.tipboardDetailView(sqlSession,tno);
			System.out.println("상세보기 서비스impl"+list);
			return list;
			
			
		}
	//아래는 게시판 상세보기 파일 
	@Override
	public TipBoardAttach tipboardAttDetailView(int tno) {
		return TipBoardDao.tipboardAttDetailView(sqlSession,tno);
		
	}
		
	//아래는 글쓰기 
	@Override
	public int insertFrBoard(TipBoard fb, ArrayList<TipBoardAttach> falist) {
		int result1 =TipBoardDao.insertTipBoard1(sqlSession,tb);
		int result2 =TipBoardDao.insertAttFrBoard2(sqlSession,talist);
		
			System.out.println("글등록됬으면(사진말고)1:"+result1);
			System.out.println("글등록됬으면(사진포함)1:"+result2);
			
		int finalResult= (result1 + result2);
			System.out.println("2이면 둘다성공 1은둘중하나"+finalResult);	
		return finalResult;
	
	}
	
	//아래는 자유게시판 글 삭제 
	@Override
	public int tipboardDelete(int fno) {
		int result =TipBoardDao.tipboardDelete(sqlSession,tno);
		System.out.println("삭제 성공했으면 1"+result);
		return result;
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
