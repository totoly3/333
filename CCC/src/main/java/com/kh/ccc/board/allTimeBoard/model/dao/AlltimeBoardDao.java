package com.kh.ccc.board.allTimeBoard.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.ccc.board.freeboard.model.vo.FrBoard;
import com.kh.ccc.common.model.vo.PageInfo;
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

}
