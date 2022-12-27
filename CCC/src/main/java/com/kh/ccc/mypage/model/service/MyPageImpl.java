package com.kh.ccc.mypage.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.ccc.mypage.model.dao.MyPageDao;
import com.kh.ccc.mypage.model.vo.MyCharacter;
import com.kh.ccc.mypage.model.vo.MyCharacterAttach;

@Service
public class MyPageImpl implements MyPageService{

		@Autowired
		MyPageDao myPageDao;
		
		@Autowired
		private SqlSessionTemplate sqlSession;
	
		
		//목록조회 리스트
		@Override
		public ArrayList<MyCharacter> selectchaList(int mNo){
			
			ArrayList<MyCharacter> chaList=myPageDao.selectchaList(sqlSession,mNo);
			
			return chaList;
		}
		
		
		//게시글,리스트 등록
		@Override
		public int mycharInsert(MyCharacter cha, ArrayList<MyCharacterAttach> mcalist) {
			
			int result=myPageDao.mycharInsert(sqlSession,cha,mcalist); //게시글 넣은 결과
					
			return result;
		}
	
	
		//상세보기 조회수 증가
//		@Override
//		public int increaseCount(int cNo) {
//	
//			int count=myPageDao.increaseCount(sqlSession,cNo);
//			
//			System.out.println("saa"+count);
//			
//			return count;
//		}


		//상세보기 글조회
		@Override
		public MyCharacter selecectMyChar(int cNo) {
			
			MyCharacter cha=myPageDao.selecectMyChar(sqlSession,cNo);
			
			//System.out.println("sss"+cha);
			
			return cha;
		}


		//상세보기 파일조회
		@Override
		public ArrayList<MyCharacterAttach> selectChaList(int cNo) {
			
			ArrayList<MyCharacterAttach> mchalist=myPageDao.selectChaList(sqlSession,cNo);
			
			//System.out.println("sss"+mchalist);
			
			return mchalist;
		}


		//실제 업데이트
		@Override
		public int updateMyChar(MyCharacter cha, ArrayList<MyCharacterAttach> newmchalist) {
			
			//실제 업데이트
			int result=myPageDao.updateMyChar(sqlSession,cha,newmchalist);
			
			return result;
		}


		//삭제
		@Override
		public int delteMyChar(int cNo) {
			
			//글삭제
			int result=myPageDao.deleteMyChar(sqlSession,cNo);
			
			//첨부파일 삭제
			int result1=myPageDao.deleteMyCharAttach(sqlSession,cNo);
			
			int finalResult=result*result1;
			
			return finalResult;
			
		}


		
	
	
	
	
}
