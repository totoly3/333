package com.kh.ccc.board.freeboard.model.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.kh.ccc.board.freeboard.model.vo.FrBoard;
import com.kh.ccc.board.freeboard.model.vo.FrBoardAttach;
import com.kh.ccc.board.freeboard.model.vo.FrBoardReply;
import com.kh.ccc.common.model.vo.PageInfo;
import com.kh.ccc.member.model.vo.Member;

public interface FrBoardService {

	//게시글 리스트 조회 + 페이징처리 
	
		// 아래는 게시글 총개수
		int selectListCount();
		
		
		//게시글 리스트 조회 
		ArrayList<FrBoard> selectList(PageInfo pi);


		//아래는 게시글 조회수 증가 
		int increaseCount(int fno);

		//아래는 게시글 상세보기 
		ArrayList<FrBoard> frboardDetailView(int fno);

		//아래는 게시글 상세보기 (파일)
		ArrayList<FrBoardAttach> frboardAttDetailView(int fno);
	
		//글쓰기 파일두개일때 (사진,글)
		int insertFrBoard(FrBoard fb, ArrayList<FrBoardAttach> falist);

		//글만 등록할떄
		int insertFrBoardOnlyWrite(FrBoard fb);
		
		//아래는 자유게시판 글 삭제 
		int frboardDelete(int fno);

		//아래는 db데이터 삭제 
		int frboardDbDelete(int fno);
		
		//댓글 조회 
		ArrayList<FrBoardReply> detailFrBoardReviewSelect(int fno);

		//댓글등록
		int insertFrReply(FrBoardReply refb);

		//아래는 자유게시판 수정하기(글만)
		int updateFrboard1(FrBoard fb);

		//아래는 자유게시판 수정하기(파일)
		int updateFrboard2(ArrayList<FrBoardAttach> frba);
		
		//아래는 자유게시판 댓글 수정하기
		int frReplyModify(FrBoardReply refb);

		//아래는 체크된거 삭제 
		int deleteClickFrboard(List<String> checkBoxArr);

		//첨부파일 삭제(병철이형 부분)
		int deleteFrFile(ArrayList<FrBoardAttach> frba);
		
	}
