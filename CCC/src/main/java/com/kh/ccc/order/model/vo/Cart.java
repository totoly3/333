package com.kh.ccc.order.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data

	public class Cart {
	
	    //카트영역
		private int cartNumber;	//	CART_NO	NUMBER 카트번호
		private	int memberNumber; //	M_NO	NUMBER 사용자번호
		private	int goodsNumber;//	G_NO	NUMBER 굿즈번호
		private	int quantity; //	QUANTITY	NUMBER 굿즈수량
		private	String option1; //	OPTION1	VARCHAR2(30 BYTE) 굿즈옵션1
		private	String option2; //	OPTION2	VARCHAR2(30 BYTE) 굿즈옵션2

		
		//굿즈영역
		private String goodsName; //	G_NAME	VARCHAR2(100 BYTE) 굿즈명
		private String goodsOriginName;//	G_ORIGIN_NAME1	VARCHAR2(500 BYTE) 썸네일원본명
		private String goodsChangeName; //	G_CHANGE_NAME1	VARCHAR2(500 BYTE) 썸네일수정명
		private String goodsFilePath; //	G_FILE_PATH	VARCHAR2(500 BYTE) 썸네일파일경로
		private String gStatus; //굿즈상태
	
	}
