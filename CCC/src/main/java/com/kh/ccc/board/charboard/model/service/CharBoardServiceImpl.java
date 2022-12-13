package com.kh.ccc.board.charboard.model.service;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

import com.kh.ccc.board.charboard.model.vo.CharBoard;
import com.kh.ccc.board.charboard.model.vo.CharReply;
import com.kh.ccc.common.model.vo.PageInfo;

@Service
public class CharBoardServiceImpl implements CharBoardService {

	//1.게시글의 총 개수
	@Override
	public int selectListCount() {
		// TODO Auto-generated method stub
		return 0;
	}
	//2.게시글 리스트 조회
	@Override
	public ArrayList<CharBoard> selectList(PageInfo pi) {
		// TODO Auto-generated method stub
		return null;
	}
	//게시글 등록
	@Override
	public int insertBoard(CharBoard cb) {
		// TODO Auto-generated method stub
		return 0;
	}
	//1.게시글 조회수 증가
	@Override
	public int increseCount(int boardNo) {
		// TODO Auto-generated method stub
		return 0;
	}
	//2.게시글 상세 조회
	@Override
	public CharBoard selectBoard(int boardNo) {
		// TODO Auto-generated method stub
		return null;
	}
	//게시글 수정
	@Override
	public int updateBoard(CharBoard cb) {
		// TODO Auto-generated method stub
		return 0;
	}
	//댓글 리스트 출력
	@Override
	public ArrayList<CharReply> selectReplyList(int boardNo) {
		// TODO Auto-generated method stub
		return null;
	}
	//댓글 등록
	@Override
	public int insertReply(CharReply cr) {
		// TODO Auto-generated method stub
		return 0;
	}

}
