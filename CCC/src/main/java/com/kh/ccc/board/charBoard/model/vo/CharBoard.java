package com.kh.ccc.board.charBoard.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class CharBoard {
	
	private int 	boardNo;		//캐릭터 게시판 글번호
	private int 	charNo;			//캐릭터 번호
	private String 	boardWriter;	//작성자
	private String 	boardTitle;		//글 제목
	private String 	boardContent;	//글 내용
	private int 	views;			//조회수
	private int 	like;			//좋아요
	private Date	createDate;		//작성날짜
	private String  changeName;		//파일경로 (테이블에는 없음)
	private String 	status;			//상태값(Y/N)
	
}
