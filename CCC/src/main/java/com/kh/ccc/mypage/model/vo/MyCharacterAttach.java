package com.kh.ccc.mypage.model.vo;

import java.sql.Date;

public class MyCharacterAttach {

	//파일	
	private int mCaNo;		//	MCA_NO	NUMBER
	private	int	cNo; //	C_NO	NUMBER
	private	String originName; //	MCA_ORIGIN_NAME	VARCHAR2(300 BYTE)
	private	String changeName; //	MCA_CHANGE_NAME	VARCHAR2(300 BYTE)
	private	int	mCaLevel; //	MCA_CA_LEVEL	NUMBER
	private	Date mCaCreateDate;//	MCA_CREATE_DATE	DATE
	private	String mCaStatus;//	MCA_STATUS	VARCHAR2(1 BYTE)
	public MyCharacterAttach() {
		super();
	}
	public MyCharacterAttach(int mCaNo, int cNo, String originName, String changeName, int mCaLevel, Date mCaCreateDate,
			String mCaStatus) {
		super();
		this.mCaNo = mCaNo;
		this.cNo = cNo;
		this.originName = originName;
		this.changeName = changeName;
		this.mCaLevel = mCaLevel;
		this.mCaCreateDate = mCaCreateDate;
		this.mCaStatus = mCaStatus;
	}
	public int getmCaNo() {
		return mCaNo;
	}
	public void setmCaNo(int mCaNo) {
		this.mCaNo = mCaNo;
	}
	public int getcNo() {
		return cNo;
	}
	public void setcNo(int cNo) {
		this.cNo = cNo;
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
		return "MyCharacterAttach [mCaNo=" + mCaNo + ", cNo=" + cNo + ", originName=" + originName + ", changeName="
				+ changeName + ", mCaLevel=" + mCaLevel + ", mCaCreateDate=" + mCaCreateDate + ", mCaStatus="
				+ mCaStatus + "]";
	}
	
	
	
			
}
