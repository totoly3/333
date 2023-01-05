package com.kh.ccc.board.freeboard.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.web.multipart.MultipartFile;

import com.kh.ccc.board.freeboard.model.vo.FrBoard;
import com.kh.ccc.board.freeboard.model.vo.FrBoardAttach;
import com.kh.ccc.board.freeboard.model.vo.FrBoardReply;
import com.kh.ccc.common.model.vo.PageInfo;
import com.kh.ccc.member.model.vo.Member;

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
		System.out.println("상세보기 Dao frbalist :"+frbalist);
		return frbalist;
		
	}
	//아래는 게시글 상세보기 첨부파일 가져오려고
	public ArrayList<FrBoardAttach> frboardAttDetailView(SqlSessionTemplate sqlSession, int fno) {
		
		ArrayList<FrBoardAttach> result= (ArrayList)sqlSession.selectList("frBoardMapper.frboardAttDetailView",fno);
		System.out.println("frboardAttDetailView :: DAO:: result : "+result);
		return result;
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
			int delete =sqlSession.update("frBoardMapper.frboardDelete",fno);
			System.out.println("삭제성공 이면 1"+delete);
			return delete;
		}
		
		//아래는 db데이터 삭제 
		public int frboardDbDelete(SqlSessionTemplate sqlSession, int fno) {
			int deResult=sqlSession.update("frBoardMapper.frboardDbDelete",fno);
			System.out.println("db삭제dao deResult는 : "+deResult);
			return deResult;
		}
			
	//아래는 댓글 조회 	
		public ArrayList<FrBoardReply> detailFrBoardReviewSelect(SqlSessionTemplate sqlSession, int fno) {
			 ArrayList<FrBoardReply> flist = (ArrayList)sqlSession.selectList("frBoardMapper.detailFrBoardReviewSelect",fno);
			return flist;
		}
	//아래는 댓글 등록 
		public int insertFrReply(SqlSessionTemplate sqlSession, FrBoardReply refb) {
			int reFrResult = sqlSession.insert("frBoardMapper.insertFrReply",refb);
			System.out.println("댓글등록되었으면1"+reFrResult);
			return reFrResult;
		}
		
		//아래는 자유게시판 수정 (글만 수정)
		public int updateFrboard1(SqlSessionTemplate sqlSession, FrBoard fb) {
			int result1=sqlSession.update("frBoardMapper.updateFrboard1",fb);
			return result1;
		}

		//아래는 자유게시판 수정 (파일까지 수정 )
		public int updateFrboard2(SqlSessionTemplate sqlSession, ArrayList<FrBoardAttach> newfrba) {
			System.out.println("여기는 dao 에 파일 수정 newfrba:"+newfrba);
			int result2=1;
			
			for(int i=0; i<newfrba.size(); i++) {
				result2*=sqlSession.update("frBoardMapper.updateFrboard2",newfrba.get(i));
			}
			
//			result2*=sqlSession.update("frBoardMapper.updateFrboard2",frba.get(i));
			
			System.out.println("여기는 dao 에 파일 수정 result2:"+result2);
			return result2;
		}
		
		//아래는 자유게시판 댓글 수정 
		public int frReplyModify(SqlSessionTemplate sqlSession, FrBoardReply refb) {
			
			System.out.println("FrBoardReply refb은?"+refb);
			
			int result =sqlSession.update("frBoardMapper.frReplyModify",refb);
		
			System.out.println("댓글수정 result dao: "+result);
			return result;
		}
		//아래는 체크된거 글삭제
		public int deleteClickFrboard(SqlSessionTemplate sqlSession, List<String> checkBoxArr) {
			int deresult=sqlSession.update("frBoardMapper.deleteClickFrboard",checkBoxArr);
			System.out.println("체크된거 삭제되었나"+deresult);
			return deresult;
		}
		
		//기존파일 삭제 (병철이형 부분)
		public int deleteFrFile(SqlSessionTemplate sqlSession, ArrayList<FrBoardAttach> frba) {
			int result=sqlSession.delete("frBoardMapper.deleteFrFile",frba);
			System.out.println("기존파일 삭제 되었으면을까?: "+result);
			return result;
		}
		
		//댓글 삭제 
		public int deleteReply(SqlSessionTemplate sqlSession, FrBoardReply refb) {
			int result=sqlSession.update("frBoardMapper.deleteReply");
			return result;
		}


}
