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
	
	//파일join용 추가 필드 
	private int mCaNo;		//	MCA_NO	NUMBER
	private	String originName; //	MCA_ORIGIN_NAME	VARCHAR2(300 BYTE)
	private	String changeName; //	MCA_CHANGE_NAME	VARCHAR2(300 BYTE)
	private	int	mCaLevel; //	MCA_CA_LEVEL	NUMBER
	private	Date mCaCreateDate;//	MCA_CREATE_DATE	DATE
	private	String mCaStatus;//	MCA_STATUS	VARCHAR2(1 BYTE)
	
	public MyCharacter() {
		super();
	}


	public MyCharacter(int cNo, int mNo, String cName, int cLike, String cContent, Date cCreateDate, String cStatus,
			int mCaNo, String originName, String changeName, int mCaLevel, Date mCaCreateDate, String mCaStatus) {
		super();
		this.cNo = cNo;
		this.mNo = mNo;
		this.cName = cName;
		this.cLike = cLike;
		this.cContent = cContent;
		this.cCreateDate = cCreateDate;
		this.cStatus = cStatus;
		this.mCaNo = mCaNo;
		this.originName = originName;
		this.changeName = changeName;
		this.mCaLevel = mCaLevel;
		this.mCaCreateDate = mCaCreateDate;
		this.mCaStatus = mCaStatus;
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




	public int getmCaNo() {
		return mCaNo;
	}




	public void setmCaNo(int mCaNo) {
		this.mCaNo = mCaNo;
	}




	public String getOriginName() {
		return originName;
	}




	public void setOriginName(String originName) {
		this.originName = originName;
	}




	public String getChangeName() {
		return changeName;
	}




	public void setChangeName(String changeName) {
		this.changeName = changeName;
	}




	public int getmCaLevel() {
		return mCaLevel;
	}




	public void setmCaLevel(int mCaLevel) {
		this.mCaLevel = mCaLevel;
	}




	public Date getmCaCreateDate() {
		return mCaCreateDate;
	}




	public void setmCaCreateDate(Date mCaCreateDate) {
		this.mCaCreateDate = mCaCreateDate;
	}




	public String getmCaStatus() {
		return mCaStatus;
	}




	public void setmCaStatus(String mCaStatus) {
		this.mCaStatus = mCaStatus;
	}


	@Override
	public String toString() {
		return "MyCharacter [cNo=" + cNo + ", mNo=" + mNo + ", cName=" + cName + ", cLike=" + cLike + ", cContent="
				+ cContent + ", cCreateDate=" + cCreateDate + ", cStatus=" + cStatus + ", mCaNo=" + mCaNo
				+ ", originName=" + originName + ", changeName=" + changeName + ", mCaLevel=" + mCaLevel
				+ ", mCaCreateDate=" + mCaCreateDate + ", mCaStatus=" + mCaStatus + "]";
	}
	
	
}
