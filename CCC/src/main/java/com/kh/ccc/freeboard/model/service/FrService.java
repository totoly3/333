package com.kh.ccc.freeboard.model.service;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

import com.kh.ccc.common.model.vo.PageInfo;
import com.kh.ccc.freeboard.model.vo.FrBoard;
@Service
public interface FrService {

	//게시글 리스트 조회 + 페이징처리 
	
	// 아래는  자유게시판 게시글 총개수
	int selectListCount();
	
	//자유게시판 게시글 리스트 조회 
	ArrayList<FrBoard>selectList(PageInfo pi);

	
	//아래는 자유게시판 게시글 작성 (사진포함)
	int insertBoard(FrBoard fb);
	
	// ㅍ 자유게시판 게시글 상세 조회 
	FrBoard boardDetailView(int bno);
	
	//아래는자유게시판  게시글 조회수 증가 
	int increaseCount(int BoardNo);
	
	//아래는  자유게시판 게시물 상세 보기 -선생님  -현재 선생님 버전으로 진행중
	FrBoard selectBoard(int BoardNo);
	
	//자유게시판 게시글 삭제 
	int deleteBoard(int bno);
	
	//자유게시판 게시글 수정
	int updateBoard(FrBoard b);

//	//게시글 리뷰작성 
//	ArrayList<frReply> detailBoardReviewSelect(int bno);
//
//	//댓글 등록
//	int insertReply(frReply r);

}
