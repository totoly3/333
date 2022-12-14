package com.kh.ccc.board.freeboard.model.vo;

import java.sql.Date;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

public class FrBoard {
	
 private int fNo;					//	F_NO	NUMBER
 private int fWriter;					//	F_WRITER	NUMBER
 private int fType;				//	F_TYPE	NUMBER
 private String fTitle;					//	F_TITLE	VARCHAR2(100 BYTE)
 private String fContent;					//	F_CONTENT	VARCHAR2(3000 BYTE)
 private int	fCount;				//	F_COUNT	NUMBER
 private Date	fCreateDate;				//	F_CREATE_DATE	DATE
 private Date	fUpdateDate;					//	F_UPDATE_DATE	DATE
 private Date	fDeleteDate;					//	F_DELETE_DATE	DATE
private String fStatus;					//	F_STATUS	VARCHAR2(1 BYTE)
 private String fTitleimg;
public FrBoard() {
	super();
}
public FrBoard(int fNo, int fWriter, int fType, String fTitle, String fContent, int fCount, Date fCreateDate,
		Date fUpdateDate, Date fDeleteDate, String fStatus, String fTitleimg) {
	super();
	this.fNo = fNo;
	this.fWriter = fWriter;
	this.fType = fType;
	this.fTitle = fTitle;
	this.fContent = fContent;
	this.fCount = fCount;
	this.fCreateDate = fCreateDate;
	this.fUpdateDate = fUpdateDate;
	this.fDeleteDate = fDeleteDate;
	this.fStatus = fStatus;
	this.fTitleimg = fTitleimg;
}
public int getfNo() {
	return fNo;
}
public void setfNo(int fNo) {
	this.fNo = fNo;
}
public int getfWriter() {
	return fWriter;
}
public void setfWriter(int fWriter) {
	this.fWriter = fWriter;
}
public int getfType() {
	return fType;
}
public void setfType(int fType) {
	this.fType = fType;
}
public String getfTitle() {
	return fTitle;
}
public void setfTitle(String fTitle) {
	this.fTitle = fTitle;
}
public String getfContent() {
	return fContent;
}
public void setfContent(String fContent) {
	this.fContent = fContent;
}
public int getfCount() {
	return fCount;
}
public void setfCount(int fCount) {
	this.fCount = fCount;
}
public Date getfCreateDate() {
	return fCreateDate;
}
public void setfCreateDate(Date fCreateDate) {
	this.fCreateDate = fCreateDate;
}
public Date getfUpdateDate() {
	return fUpdateDate;
}
public void setfUpdateDate(Date fUpdateDate) {
	this.fUpdateDate = fUpdateDate;
}
public Date getfDeleteDate() {
	return fDeleteDate;
}
public void setfDeleteDate(Date fDeleteDate) {
	this.fDeleteDate = fDeleteDate;
}
public String getfStatus() {
	return fStatus;
}
public void setfStatus(String fStatus) {
	this.fStatus = fStatus;
}
public String getfTitleimg() {
	return fTitleimg;
}
public void setfTitleimg(String fTitleimg) {
	this.fTitleimg = fTitleimg;
}
@Override
public String toString() {
	return "FrBoard [fNo=" + fNo + ", fWriter=" + fWriter + ", fType=" + fType + ", fTitle=" + fTitle + ", fContent="
			+ fContent + ", fCount=" + fCount + ", fCreateDate=" + fCreateDate + ", fUpdateDate=" + fUpdateDate
			+ ", fDeleteDate=" + fDeleteDate + ", fStatus=" + fStatus + ", fTitleimg=" + fTitleimg + "]";
}
 
 
 
}
