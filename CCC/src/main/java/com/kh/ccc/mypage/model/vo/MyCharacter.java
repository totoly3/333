package com.kh.ccc.mypage.model.vo;

import java.sql.Date;

//마이페이지 내 캐릭터
public class MyCharacter {

				
	private int cNo;		 //	C_NO	NUMBER
	private int mNo;		//	M_NO	NUMBER
	private String cName;		//	C_NAME	VARCHAR2(30 BYTE)
	private int cLike;		//	C_LIKE	NUMBER
	private String cContent; //	C_CONTENT	VARCHAR2(2000 BYTE)	
	private Date cCreateDate;		//	C_CREATE_DATE	DATE
	private String cStatus;		//	C_STATUS	VARCHAR2(1 BYTE)
	
	public MyCharacter() {
		super();
	}

	public MyCharacter(int cNo, int mNo, String cName, int cLike, String cContent, Date cCreateDate, String cStatus) {
		super();
		this.cNo = cNo;
		this.mNo = mNo;
		this.cName = cName;
		this.cLike = cLike;
		this.cContent = cContent;
		this.cCreateDate = cCreateDate;
		this.cStatus = cStatus;
	}

	public int getcNo() {
		return cNo;
	}

	public void setcNo(int cNo) {
		this.cNo = cNo;
	}

	public int getmNo() {
		return mNo;
	}

	public void setmNo(int mNo) {
		this.mNo = mNo;
	}

	public String getcName() {
		return cName;
	}

	public void setcName(String cName) {
		this.cName = cName;
	}

	public int getcLike() {
		return cLike;
	}

	public void setcLike(int cLike) {
		this.cLike = cLike;
	}

	public String getcContent() {
		return cContent;
	}

	public void setcContent(String cContent) {
		this.cContent = cContent;
	}

	public Date getcCreateDate() {
		return cCreateDate;
	}

	public void setcCreateDate(Date cCreateDate) {
		this.cCreateDate = cCreateDate;
	}

	public String getcStatus() {
		return cStatus;
	}

	public void setcStatus(String cStatus) {
		this.cStatus = cStatus;
	}

	@Override
	public String toString() {
		return "MyCharacter [cNo=" + cNo + ", mNo=" + mNo + ", cName=" + cName + ", cLike=" + cLike + ", cContent="
				+ cContent + ", cCreateDate=" + cCreateDate + ", cStatus=" + cStatus + "]";
	}
	
	
	
}
