package com.kh.ccc.board.allTimeBoard.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.ccc.board.freeboard.model.vo.FrBoard;
import com.kh.ccc.common.model.vo.PageInfo;
import com.kh.ccc.mypage.model.vo.MyCharacterAttach;
@Repository
public class AlltimeBoardDao {
	
	//아래는 역대 수상작 

	public ArrayList<Character> allTimeSelectList(SqlSessionTemplate sqlSession,PageInfo pi) {
		int limit = pi.getBoardLimit();
		int offset =(pi.getCurrentPage()-1)* limit;	
		
		RowBounds rowBounds = new RowBounds(offset,limit);
		ArrayList<Character> calist=(ArrayList)sqlSession.selectList("allTimeBoardMapper.allTimeSelectList",null,rowBounds);
		System.out.println("calist Dao는?: "+calist);
		return calist;
	}
	
	//아래는 db에서 첨부파일 이미지 불러오려고 ! 
	public ArrayList<MyCharacterAttach> myAllTimeBoard(SqlSessionTemplate sqlSession) {
		ArrayList<MyCharacterAttach> myca=(ArrayList)sqlSession.selectList("allTimeBoardMapper.myAllTimeBoard");
		System.out.println("myca dao는?"+myca);
		return myca;
	}

}
