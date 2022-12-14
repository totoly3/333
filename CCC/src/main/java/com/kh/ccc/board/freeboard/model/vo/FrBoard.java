package com.kh.ccc.board.freeboard.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@AllArgsConstructor
@NoArgsConstructor
@Data
public class FrBoard {
	
 private int fNo;					//	F_NO	NUMBER
 private int fWriter;					//	F_WRITER	NUMBER
 private int fType;				//	F_TYPE	NUMBER
 private String fTitle;					//	F_TITLE	VARCHAR2(100 BYTE)
 private String fContent;					//	F_CONTENT	VARCHAR2(3000 BYTE)
 private int	fCountNumber;				//	F_COUNT	NUMBER
 private Date	fCreateDate;				//	F_CREATE_DATE	DATE
 private Date	fUpdateDate;					//	F_UPDATE_DATE	DATE
 private Date	fDeleteDate;					//	F_DELETE_DATE	DATE
private String fStatus;					//	F_STATUS	VARCHAR2(1 BYTE)
}
