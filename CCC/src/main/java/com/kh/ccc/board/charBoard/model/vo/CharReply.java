package com.kh.ccc.board.charBoard.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class CharReply {
	
	private int crNo;	//댓글 번호
	private int cbNO;	//참조캐릭터 게시글 번호
	private String crContent; //댓글 내용
	private int crWriter;	//작성자 회원번호
	private Date crCreateDate;	//작성일
	private String crStatus;	//상태값(Y/N)
	
}
