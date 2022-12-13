package com.kh.ccc.board.charBoard.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class CharAttach {

	private int caNo;	//파일번호
	private int cbNo;	//참조게시글 번호
	private String caOriginName;	//원본파일명
	private String caChangeName;	//바뀐파일명
	private Date caCreateDate;		//파일등록일
	private String caStatus;		//상태값(Y/N)
	
}
