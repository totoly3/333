package com.kh.ccc.order.model.vo;
import java.sql.Date;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data

public class Goods {

private int gNo;	//	G_NO	NUMBER
private int cNo;	//	C_NO	NUMBER
private String gName;	//	G_NAME	VARCHAR2(100 BYTE)
private	String gCategory;//	G_CATEGORY	VARCHAR2(100 BYTE)
private	int gStock;//	G_STOCK	NUMBER
private	int gPrice;//	G_PRICE	NUMBER
private	String gContent;//	G_CONTENT	VARCHAR2(400 BYTE)
private	String gOriginName1;//	G_ORIGIN_NAME1	VARCHAR2(500 BYTE)
private	String gChangeName1;//	G_CHANGE_NAME1	VARCHAR2(500 BYTE)
private	String gOriginName2;//	G_ORIGIN_NAME2	VARCHAR2(500 BYTE)
private	String gChangeName2;//	G_CHANGE_NAME2	VARCHAR2(500 BYTE)
private	String gOriginName3;//	G_ORIGIN_NAME3	VARCHAR2(500 BYTE)
private	String gChangeName3;//	G_CHANGE_NAME3	VARCHAR2(500 BYTE)
private	String gOriginName4; //	G_ORIGIN_NAME4	VARCHAR2(500 BYTE)
private	String gChangeName4;//	G_CHANGE_NAME4	VARCHAR2(500 BYTE)
private	String gFilePath;//	G_FILE_PATH	VARCHAR2(500 BYTE)
private	Date gEnrollDate; //	G_ENROLL_DATE	DATE
private	String gStatus;//	G_STATUS	VARCHAR2(1 BYTE)
	
}
