package com.kh.ccc.board.charBoard.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.ccc.board.charBoard.model.dao.CharBoardDao;
import com.kh.ccc.board.charBoard.model.vo.CharAttach;
import com.kh.ccc.board.charBoard.model.vo.CharBoard;
import com.kh.ccc.board.charBoard.model.vo.CharReply;
import com.kh.ccc.common.model.vo.PageInfo;

@Service
public class CharBoardServiceImpl implements CharBoardService {

	@Autowired
	private CharBoardDao boardDao;
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	//1.게시글의 총 개수
	@Override
	public int selectListCount() {
		return boardDao.selectListCount(sqlSession);
	}
	//2.게시글 리스트 조회
	@Override
	public ArrayList<CharBoard> selectList(PageInfo pi) {
		return boardDao.selectList(sqlSession, pi);
	}
	//게시글 등록 (게시글,첨부파일)
	@Override
	public int insertCharBoard(CharBoard cb,ArrayList<CharAttach> list) {
		
		int result = boardDao.insertBoard(sqlSession,cb);
		int result2 = boardDao.insertAttach(sqlSession,list);
		int finalResult = result * result2;
		
		return finalResult;
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
