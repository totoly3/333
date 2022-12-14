package com.kh.ccc.board.freeboard.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class FrBoardAttach {
	private int faNo;	//자유글 첨부파일 번호	FA_NO	NUMBER
	private int fNo;	//참조 자유글 번호	F_NO	NUMBER
	private String faOrginName;	//첨부파일 수정전 파일명	FA_ORIGIN_NAME	VARCHAR2(500 BYTE)
	private String faChangeName;//첨부파일 수정후 파일명	FA_CHANGE_NAME	VARCHAR2(500 BYTE)
	private String faFilePath;	//첨부파일 경로	FA_FILE_PATH	VARCHAR2(500 BYTE)
	private String faStatus;		//	FA_STATUS	VARCHAR2(1 BYTE)
}
