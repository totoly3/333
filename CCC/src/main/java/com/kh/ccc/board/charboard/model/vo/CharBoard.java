package com.kh.ccc.board.charboard.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class CharBoard {
	
	private int cbNo;			//캐릭터 게시판 글번호
	private int cNo;			//캐릭터 번호
	private String cbWriter;	//작성자
	private String cbTitle;		//글 제목
	private String cbContent;	//글 내용
	private int cbViews;		//조회수
	private int cbLike;			//좋아요
	private Date cbCreateDate;	//작성날짜
	private String cbStatus;	//상태값(Y/N)
	
}
