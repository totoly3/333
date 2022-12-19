package com.kh.ccc.board.freeboard.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.ccc.board.freeboard.model.vo.FrBoard;
import com.kh.ccc.board.freeboard.model.vo.FrBoardAttach;
import com.kh.ccc.common.model.vo.PageInfo;

@Repository
public class FrBoardDao {
	//게시글 갯수 조회
	public int selectListCount(SqlSessionTemplate sqlSession) {
		int result = sqlSession.selectOne("frBoardMapper.selectListCount");
		return result ;
	}
	//아래는 게시글 리스트 조회 
	public ArrayList<FrBoard> selectList(SqlSessionTemplate sqlSession, PageInfo pi) {
		int limit = pi.getBoardLimit();
		int offset =(pi.getCurrentPage()-1)* limit;	
		
		RowBounds rowBounds = new RowBounds(offset,limit);
		ArrayList<FrBoard> flist=(ArrayList)sqlSession.selectList("frBoardMapper.selectList",null,rowBounds);
		return flist;
	}

	//d아래는 조회수 증가 
	public int increaseCount(SqlSessionTemplate sqlSession, int fno) {
		
		return sqlSession.update("frBoardMapper.increaseCount",fno);
		
	}
	//게시물  상세보기
	public ArrayList<FrBoard> frboardDetailView(SqlSessionTemplate sqlSession, int fno) {

		ArrayList<FrBoard> frbalist=(ArrayList)sqlSession.selectList("frBoardMapper.frboardDetailView",fno);
		System.out.println("frbalist :"+frbalist);
		return frbalist;
		
	}
	//아래는 게시글 상세보기 첨부파일 가져오려고
	public FrBoardAttach frboardAttDetailView(SqlSessionTemplate sqlSession, int fno) {
		
		return sqlSession.selectOne("frBoardMapper.frboardAttDetailView");
	}
	
	//아래는 게시글 등록(글만)
	public int insertFrBoard1(SqlSessionTemplate sqlSession, FrBoard fb) {
		
		int result1 =sqlSession.insert("frBoardMapper.insertFrBoard1",fb);
		System.out.println("result1 게시글 등록되었으면 1"+result1);
		return result1;
	}
	
	
	// 아래는 게시글 등록 (사진 )
		public int insertAttFrBoard2(SqlSessionTemplate sqlSession, ArrayList<FrBoardAttach> falist) {

			int result2 =sqlSession.insert("frBoardMapper.insertAttFrBoard2",falist);
			System.out.println("result2 게시글 등록되었으면 2"+result2);
			return result2;
	}
		
	//아래는 자유게시판 글 삭제 
		public int frboardDelete(SqlSessionTemplate sqlSession, int fno) {
			// TODO Auto-generated method stub
			return 0;
		}

}
