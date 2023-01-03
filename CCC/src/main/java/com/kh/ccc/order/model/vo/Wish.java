package com.kh.ccc.order.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class Wish {

	//
	private int memberNumber; //M_NO NUMBER 멤버넘버
	private int goodsNumber; //	G_NO NUMBER 굿즈넘버
	
	//join goods영역
	private int cNo;	//	C_NO	NUMBER 캐릭터번호
	private String gName;	//	G_NAME	VARCHAR2(100 BYTE) 굿즈명
	private	String gCategory;//	G_CATEGORY	VARCHAR2(100 BYTE) 굿즈카테
	private	int gStock;//	G_STOCK	NUMBER 굿즈재고
	private	int gPrice;//	G_PRICE	NUMBER 굿즈가격
	private	String gContent;//	G_CONTENT	VARCHAR2(400 BYTE) 굿즈설명
	private	String gOriginName1;//	G_ORIGIN_NAME1	VARCHAR2(500 BYTE) 썸네일원본명
	private	String gChangeName1;//	G_CHANGE_NAME1	VARCHAR2(500 BYTE) 썸네일 수정명
	private	String gFilePath;//	G_FILE_PATH	VARCHAR2(500 BYTE)파일경로
	private	String gStatus;//	G_STATUS	VARCHAR2(1 BYTE) 굿즈상태
		
	
}
