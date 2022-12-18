package com.kh.ccc.board.charBoard.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class CharReply {
	
	private int 	reNo;			//댓글 번호
	private int 	refNo;			//참조캐릭터 게시글 번호
	private String 	reContent; 		//댓글 내용
	private int 	reWriter;		//작성자 회원번호
	private Date 	reCreateDate;	//작성일
	private String 	reStatus;		//상태값(Y/N)
	
}
