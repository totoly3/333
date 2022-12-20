package com.kh.ccc.board.freeboard.model.service;

import java.util.ArrayList;

import com.kh.ccc.board.freeboard.model.vo.FrBoard;
import com.kh.ccc.board.freeboard.model.vo.FrBoardAttach;
import com.kh.ccc.board.freeboard.model.vo.FrBoardReply;
import com.kh.ccc.common.model.vo.PageInfo;

public interface FrBoardService {

	//게시글 리스트 조회 + 페이징처리 
	
		// 아래는 게시글 총개수
		int selectListCount();
		
		
		//게시글 리스트 조회 
		ArrayList<FrBoard>selectList(PageInfo pi);


		//아래는 게시글 조회수 증가 
		int increaseCount(int fno);

		//아래는 게시글 상세보기 
		ArrayList<FrBoard> frboardDetailView(int fno);

		//아래는 게시글 상세보기 (파일)
		ArrayList<FrBoardAttach> frboardAttDetailView(int fno);
	
		//글쓰기 파일두개일때 (사진,글)
		int insertFrBoard(FrBoard fb, ArrayList<FrBoardAttach> falist);

		//글만 등록할떄
		int insertFrBoardOnlyWrite(FrBoard fb);
		
		//아래는 자유게시판 글 삭제 
		int frboardDelete(int fno);

		//댓글 조회 
		ArrayList<FrBoardReply> detailFrBoardReviewSelect(int fno);

		//댓글등록
		int insertFrReply(FrBoardReply refb);

//		//아래는 수정하기
//		int updateFrboard(ArrayList<FrBoard> fb, ArrayList<FrBoardAttach> frba);


	
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
