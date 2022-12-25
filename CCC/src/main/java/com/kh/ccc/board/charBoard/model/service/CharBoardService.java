package com.kh.ccc.board.charBoard.model.service;

import java.util.ArrayList;

import com.kh.ccc.board.charBoard.model.vo.CharAttach;
import com.kh.ccc.board.charBoard.model.vo.CharBoard;
import com.kh.ccc.board.charBoard.model.vo.CharReply;
import com.kh.ccc.board.charBoard.model.vo.Character;
import com.kh.ccc.common.model.vo.PageInfo;

public interface CharBoardService {
	
	//게시판 리스트 조회 및 페이징 처리
	//1.게시글의 총 개수
	int selectListCount();
	//2.게시글 리스트 조회
	ArrayList<CharBoard> selectList(PageInfo pi);
	
	//캐릭터 게시판 게시글 등록
	int insertCharBoard(CharBoard cb, ArrayList<CharAttach> list, ArrayList<Character> cList);
	
	//게시글 상세조회 및 조회수 증가
	//1.게시글 조회수 증가
	int increseCount(int bno);
	//2.게시글 상세 조회 (글)
	CharBoard selectBoard(int bno);
	//3.게시글 상세 조회 (첨부파일)
	ArrayList<CharAttach> selectAttach(int bno);
	
	//게시글 수정
	int updateBoard(CharBoard cb, ArrayList<CharAttach> caList);
	
	//게시글 삭제
	int deleteBoard(int bno);
	
	//댓글 리스트 출력
	ArrayList<CharReply> selectReplyList(int boardNo);
	
	//댓글 등록
	int insertReply(CharReply cr);
	
	//댓글 수정
	int updateReply(CharReply cr);
	
	//댓글 삭제
	int deleteReply(CharReply cr);

	//댓글 번호 생성
	int maxNum();
	//대댓글 (부모댓글의 정보를 가져오는 메서드)
	CharReply replySelect(int reNo);
	//대댓글 (대댓글의 갯수와 순서를 정해주는 메서드)
	int maxStep(int reGroupNo);
	//대댓글 (대댓글의 계층을 나눠주는 메서드)
	void updateStep(CharReply cr);
	
}
