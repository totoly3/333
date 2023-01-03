package com.kh.ccc.competition.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data

public class Competition {
	
	private int competitionNumber;	//	CP_NO	NUMBER	대회번호
	private	int competitioniName;//	CP_NAME	VARCHAR2(100 BYTE)대회이름
	private	int competitionContent; //	CP_CONTENT	VARCHAR2(3000 BYTE)	대회설명
	private	int competitionStartDate;//	CP_START_DATE DATE No	"SYSDATE" 대회시작일
	private	String competitionEndDate;//	CP_END_DATE	DATE 대회종료일
	private String competitionStatus;	//	CP_STATUS VARCHAR2(1 BYTE) 대회상태
	
	private String memberNumber; //회원번호
	
}
