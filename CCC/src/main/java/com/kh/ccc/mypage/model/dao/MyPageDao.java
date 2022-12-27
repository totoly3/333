package com.kh.ccc.mypage.model.dao;

import java.util.ArrayList;
import java.util.Iterator;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.ccc.mypage.model.vo.MyCharacter;
import com.kh.ccc.mypage.model.vo.MyCharacterAttach;
import com.kh.ccc.order.model.vo.Order;

@Repository
public class MyPageDao {

	
	//목록조회
	public ArrayList<MyCharacter> selectchaList(SqlSessionTemplate sqlSession, int mNo) {
		return (ArrayList)sqlSession.selectList("myPageMapper.selectchaList",mNo);
	}
	
	//글과 파일리스트를 나눠서 넣어줌
	public int mycharInsert(SqlSessionTemplate sqlSession, MyCharacter cha, ArrayList<MyCharacterAttach> mcalist) {
		
		//글을 넣은 결과
		int chaResult=sqlSession.insert("myPageMapper.mycharInsert",cha);
		//System.out.println("1111111111111");
		//파일결과 1로 초기화
		int mcalistResult=1;
		
		if (chaResult>0) { //글넣은 결과가 0보다 크다면
			
		  for(MyCharacterAttach mca :mcalist) {
			  mcalistResult *=sqlSession.insert("myPageMapper.mycharAtInsert",mca);
		  }
			
		}
		
		return chaResult*mcalistResult;
	}

	
	//조회수 증가
//	public int increaseCount(SqlSessionTemplate sqlSession, int cNo) {
//		return sqlSession.update("myPageMapper.increaseCount",cNo);
//		
//	}

	//글 select
	public MyCharacter selecectMyChar(SqlSessionTemplate sqlSession, int cNo) {
		return sqlSession.selectOne("myPageMapper.selecectMyChar",cNo);
	}

	//글 파일 select
	public ArrayList<MyCharacterAttach> selectChaList(SqlSessionTemplate sqlSession, int cNo) {
		return (ArrayList)sqlSession.selectList("myPageMapper.selectMyCharList",cNo);
	}


	
	public int updateMyChar(SqlSessionTemplate sqlSession, MyCharacter cha, ArrayList<MyCharacterAttach> newmchalist) {
	  
	  //System.out.println("Dao 캐릭터객체 넘?"+cha);	
		System.out.println("Dao파일수정리스트"+newmchalist);
		
	  //글수정
	  int result= sqlSession.update("myPageMapper.updateMyChar", cha);	
	 	
	  int result1=1;
	  
	  //글수정이 되었으면 파일수정
	  if(result>0) {
	     for( MyCharacterAttach mca : newmchalist) {
	    	 result1*=sqlSession.insert("myPageMapper.updateMyCharAttach", mca);
	     }
	  }	
	  
	  return result*result1;
		
	}


	//
	public int deleteMyChar(SqlSessionTemplate sqlSession, int cNo) {
		return sqlSession.delete("myPageMapper.deleteMyChar",cNo);
	}


	//첨부파일 삭제
	public int deleteMyCharAttach(SqlSessionTemplate sqlSession, int cNo) {
		return sqlSession.update("myPageMapper.deleteMyCharAttach",cNo);
	}

	//상세보기
	public Order orderDetail(SqlSessionTemplate sqlSession, int oNo) {
		return sqlSession.selectOne("myPageMapper.orderDetail",oNo);
	}


	
}
