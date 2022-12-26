package com.kh.ccc.board.freeboard.model.service;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.kh.ccc.board.freeboard.model.dao.FrBoardDao;
import com.kh.ccc.board.freeboard.model.vo.FrBoard;
import com.kh.ccc.board.freeboard.model.vo.FrBoardAttach;
import com.kh.ccc.board.freeboard.model.vo.FrBoardReply;
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
		public ArrayList<FrBoard> frboardDetailView(int fno) {
			ArrayList<FrBoard> list	=FrBoardDao.frboardDetailView(sqlSession,fno);
			System.out.println("상세보기 서비스impl"+list);
			return list;
			
			
		}
	//아래는 게시판 상세보기 파일 
	@Override
	public ArrayList<FrBoardAttach> frboardAttDetailView(int fno) {
		return FrBoardDao.frboardAttDetailView(sqlSession,fno);
		
	}
		
	//아래는 글쓰기 파일두개일때
	@Override
	public int insertFrBoard(FrBoard fb, ArrayList<FrBoardAttach> falist) {
		int result1 =FrBoardDao.insertFrBoard1(sqlSession,fb);
		int result2 =FrBoardDao.insertAttFrBoard2(sqlSession,falist);
		
			System.out.println("글등록됬으면(사진말고)1:"+result1);
			System.out.println("글등록됬으면(사진포함)1:"+result2);
			
		int finalResult= (result1 + result2);
			System.out.println("2이면 둘다성공 1은둘중하나"+finalResult);	
		return finalResult;
	
	}
	
	//아래는 글만 
	@Override
	public int insertFrBoardOnlyWrite(FrBoard fb) {
		int result1 =FrBoardDao.insertFrBoard1(sqlSession,fb);
		return result1;
	}
	
	
	//아래는 자유게시판 글 삭제 
	@Override
	public int frboardDelete(int fno) {
		int result =FrBoardDao.frboardDelete(sqlSession,fno);
		System.out.println("삭제 성공했으면 1"+result);
		return result;
	}
	
	//아래는 db데이터 삭제 
	@Override
	public int frboardDbDelete(int fno) {
		int deResult=FrBoardDao.frboardDbDelete(sqlSession,fno);
		System.out.println("deResult 삭제되었으면1"+deResult);
		return deResult;
	}
	
	//댓글조회
	@Override
	public ArrayList<FrBoardReply> detailFrBoardReviewSelect(int fno) {
		
		ArrayList<FrBoardReply> frlist = FrBoardDao.detailFrBoardReviewSelect(sqlSession,fno);
		System.out.println("frlist"+frlist);
		return frlist;
	}
	
	//아래는 댓글 등록
	@Override
	public int insertFrReply(FrBoardReply refb) {
		return FrBoardDao.insertFrReply(sqlSession,refb);
		
	}
	
	//아래는 자유게시판 글만 수정하기 
	@Override
	public int updateFrboard1(FrBoard fb) {
		int result1 = FrBoardDao.updateFrboard1(sqlSession,fb);
		return result1;
	}
	
	//아래는 자유게시판 파일수정
	@Override
	public int updateFrboard2(ArrayList<FrBoardAttach> newfrba) {
		int result2 = FrBoardDao.updateFrboard2(sqlSession,newfrba);
		return result2;
	}

//
//	//아래는 자유게시판 수정 할때 파일 삭제 
//	@Override
//	public int dbDeleteUpdateFrboard(ArrayList<FrBoardAttach> frba) {
//		int updeResult=FrBoardDao.dbDeleteUpdateFrboard(sqlSession,frba);
//		System.out.println(updeResult);
//		return updeResult;
//	}
	

	



}
