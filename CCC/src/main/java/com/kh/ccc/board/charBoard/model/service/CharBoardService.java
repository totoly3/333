package com.kh.ccc.board.charBoard.model.service;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

import com.kh.ccc.board.charBoard.model.vo.CharBoard;
import com.kh.ccc.board.charBoard.model.vo.CharReply;
import com.kh.ccc.common.model.vo.PageInfo;

public interface CharBoardService {
	
	//게시판 리스트 조회 및 페이징 처리
	//1.게시글의 총 개수
	int selectListCount();
	//2.게시글 리스트 조회
	ArrayList<CharBoard> selectList(PageInfo pi);
	
	//게시글 등록
	int insertBoard(CharBoard cb);
	
	//게시글 상세조회 및 조회수 증가
	//1.게시글 조회수 증가
	int increseCount(int boardNo);
	//2.게시글 상세 조회
	CharBoard selectBoard(int boardNo);
	
	//게시글 수정
	int updateBoard(CharBoard cb);
	
	//댓글 리스트 출력
	ArrayList<CharReply> selectReplyList(int boardNo);
	
	//댓글 등록
	int insertReply(CharReply cr);
	
}
