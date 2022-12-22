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
	public int increseCount(int bno) {
		return boardDao.increaseCount(sqlSession, bno);
	}
	//2.게시글 상세 조회 (글)
	@Override
	public CharBoard selectBoard(int bno) {		
		return boardDao.selectBoard(sqlSession, bno);
	}
	//3.게시글 상세조회 (첨부파일)
	public ArrayList<CharAttach> selectAttach(int bno){
		return boardDao.selectAttach(sqlSession, bno);
	}
	
	//게시글 수정 (글)
	@Override
	public int updateBoard(CharBoard cb, ArrayList<CharAttach> caList) {
		
		int result = boardDao.updateBoard(sqlSession, cb);
		
		int result2 = boardDao.updateAttach(sqlSession, caList);
		
		int finalResult = result * result2;
		
		return finalResult;
	}
	
	//게시글 수정 (첨부파일)
	@Override
	public int updateAttach(ArrayList<CharAttach> caList) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	//게시글 삭제
	@Override
	public int deleteBoard(int bno) {
		//게시글 내용 삭제
		int result = boardDao.deleteBoard(sqlSession, bno);
		//게시글 첨부파일 삭제
		int result2 = boardDao.deleteAttach(sqlSession, bno);
		
		int finalResult = result * result2;
		
		return finalResult;
	}
	
	//댓글 리스트 조회
	@Override
	public ArrayList<CharReply> selectReplyList(int boardNo) {
		return boardDao.selectReplyList(sqlSession, boardNo);
	}
	
	//댓글 등록
	@Override
	public int insertReply(CharReply cr) {
		return boardDao.insertReply(sqlSession, cr);
	}
	
	//댓글 수정
	@Override
	public int updateReply(CharReply cr) {
		return boardDao.updateReply(sqlSession, cr);
	}
	
	//댓글 삭제
	@Override
	public int deleteReply(CharReply cr) {
		return boardDao.deleteReply(sqlSession, cr);
	}
	
	//댓글 번호 생성
	@Override
	public int maxNum() {
		return boardDao.maxNum(sqlSession);
	}

	//대댓글 (부모댓글의 그룹번호와 계층 알아오기)
	@Override
	public CharReply replySelect(int reNo) {
		return boardDao.replySelect(sqlSession, reNo);
	}
	
	//대댓글 (댓글중에서 새로운 댓글을 달때 맨 아래로 가기 위한 로직)
	@Override
	public int maxStep(int reGroupNo) {
		return boardDao.maxStep(sqlSession, reGroupNo);
	}
	
	//대댓글 (댓글의 계층을 업데이트하기 위한 로직)
	@Override
	public void updateStep(CharReply cr) {
		boardDao.updateStep(sqlSession, cr);
	}

}
