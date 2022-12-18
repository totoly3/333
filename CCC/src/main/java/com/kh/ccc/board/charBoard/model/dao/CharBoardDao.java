package com.kh.ccc.board.charBoard.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.ccc.board.charBoard.model.vo.CharAttach;
import com.kh.ccc.board.charBoard.model.vo.CharBoard;
import com.kh.ccc.common.model.vo.PageInfo;

@Repository
public class CharBoardDao {

	//게시글 총 개수 조회
	public int selectListCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("charBoardMapper.selectListCount");
	}
	//게시글 조회
	public ArrayList<CharBoard> selectList(SqlSessionTemplate sqlSession, PageInfo pi) {
		
		int limit = pi.getBoardLimit(); //게시글 몇개를 조회할 건지
		int offset = (pi.getCurrentPage()-1) * limit; //몇개의 게시글을 건너뛰고 조회할 것인지에 대한 값
		
		RowBounds rowBounds = new RowBounds(offset,limit);
		//매개변수 3개짜리 selectList사용
		return (ArrayList)sqlSession.selectList("charBoardMapper.selectList", null, rowBounds);
	}
	//게시글 등록 (글)
	public int insertBoard(SqlSessionTemplate sqlSession, CharBoard cb) {
		return sqlSession.insert("charBoardMapper.insertBoard", cb);
	}
	//게시글 첨부파일 등록
	public int insertAttach(SqlSessionTemplate sqlSession, ArrayList<CharAttach> list) {
		return sqlSession.insert("charBoardMapper.insertAttach", list);
	}
	//게시글 조회수 증가
	public int increaseCount(SqlSessionTemplate sqlSession, int bno) {
		return sqlSession.update("charBoardMapper.increaseCount", bno);	
	}
	//게시글 상세정보 조회 (게시글 1개)
	public CharBoard selectBoard(SqlSessionTemplate sqlSession, int bno) {
		return sqlSession.selectOne("charBoardMapper.selectBoard", bno);
	}
	//게시글 수정
	public int updateBoard(SqlSessionTemplate sqlSession, CharBoard cb) {
		return sqlSession.update("charBoardMapper.updateBoard", cb);
	}
	//게시글 첨부파일 수정
	public int updateAttach(SqlSessionTemplate sqlSession, CharBoard cb) {
		return sqlSession.update("charBoardMapper.updateAttach", cb);
	}
	//게시글 삭제
	public int deleteBoard(SqlSessionTemplate sqlSession, int bno) {
		return sqlSession.update("charBoardMapper.deleteBoard", bno);
	}
	//게시글 첨부파일 삭제
	public int deleteAttach(SqlSessionTemplate sqlSession, int bno) {
		return sqlSession.update("charBoardMapper.deleteAttach", bno);
	}
}
