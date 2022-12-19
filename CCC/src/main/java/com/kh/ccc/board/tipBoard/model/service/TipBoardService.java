package com.kh.ccc.board.tipBoard.model.service;

import java.util.ArrayList;

import com.kh.ccc.board.freeboard.model.vo.FrBoard;
import com.kh.ccc.board.freeboard.model.vo.FrBoardAttach;
import com.kh.ccc.board.tipBoard.model.vo.TipBoard;
import com.kh.ccc.board.tipBoard.model.vo.TipBoardAttach;
import com.kh.ccc.common.model.vo.PageInfo;

public interface TipBoardService {

	//게시글 리스트 조회 + 페이징처리 
	
		// 아래는 게시글 총개수
		int selectListCount();
		
		
		//게시글 리스트 조회 
		ArrayList<TipBoard>selectList(PageInfo pi);


		//아래는 게시글 조회수 증가 
		int increaseCount(int tno);

		//아래는 게시글 상세보기 
		ArrayList<TipBoard> tipboardDetailView(int tno);

		//아래는 게시글 상세보기 (파일)
		TipBoardAttach tipboardAttDetailView(int tno);
	
		//글쓰기 (사진,글)
		int insertTipBoard(TipBoard tb, ArrayList<TipBoardAttach> talist);

		//아래는 자유게시판 글 삭제 
		int tipboardDelete(int tno);

	
//		//게시글 상세 조회 
//		FrBoard boardDetailView(int bno);
//		

//		
//		//아래는 게시물 상세 보기 -선생님  -현재 선생님 버전으로 진행중
//		FrBoard selectBoard(int BoardNo);
//		
//		//게시글 삭제 
//		int deleteBoard(int bno);
//		
//		//게시글 수정
//		int updateBoard(FrBoard fb);

//		//게시글 리뷰작성 
//		ArrayList<Reply> detailBoardReviewSelect(int bno);
//
//		//댓글 등록
//		int insertReply(Reply r);

		//조회수 top5 메인에 게시글 조회

//		ArrayList<FrBoard> topBoard();
}
