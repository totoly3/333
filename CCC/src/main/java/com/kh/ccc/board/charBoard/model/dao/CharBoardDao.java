package com.kh.ccc.board.charBoard.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.ccc.board.charBoard.model.vo.CharAttach;
import com.kh.ccc.board.charBoard.model.vo.CharBoard;

@Repository
public class CharBoardDao {

	//게시글 총 개수 조회
	public int selectListCount(SqlSessionTemplate sqlsession) {
		
		return 0;
	}
	//게시글 등록
	public int insertBoard(SqlSessionTemplate sqlSession, CharBoard cb) {
		return sqlSession.insert("charBoardMapper.insertBoard", cb);
	}
	//게시글 첨부파일 등록
	public int insertAttach(SqlSessionTemplate sqlSession, ArrayList<CharAttach> list) {
		return sqlSession.insert("charBoardMapper.insertAttach", list);
	}
	
}
