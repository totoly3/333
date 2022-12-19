package com.kh.ccc.member.model.vo;

import java.sql.Date;

public class Member {
	
	private int mNo;		//	M_NO	NUMBER
	private String mId;		//	M_ID	VARCHAR2(20 BYTE)
	private String mPwd;		//	M_PWD	VARCHAR2(20 BYTE)
	private String mName;		//	M_NAME	VARCHAR2(30 BYTE)
	private int mgNo;		//	MG_NO	NUMBER
	private String mEmail; 	//	M_EMAIL	VARCHAR2(30 BYTE)
	private String mPhone;	//	M_PHONE	VARCHAR2(20 BYTE)
	private String mAddress; //	M_ADDRESS	VARCHAR2(100 BYTE)
	private String mGender;		//	M_GENDER	VARCHAR2(20 BYTE)
	private int mAge;		//	M_AGE	NUMBER
	private Date mCreateDate;	//	M_CREATE_DATE	DATE
	private Date mUpdateDate;	//	M_UPDATE_DATE	DATE
	private Date mDeleteDate;	//	M_DELETE_DATE	DATE
	private int mPoint;		//	M_POINT	NUMBER
	private String mStatus;	 //M_STATUS	VARCHAR2(1 BYTE)	
	
	
	
	public Member() {
		super();
	}



	public Member(int mNo, String mId, String mPwd, String mName, int mgNo, String mEmail, String mPhone,
			String mAddress, String mGender, int mAge, Date mCreateDate, Date mUpdateDate, Date mDeleteDate, int mPoint,
			String mStatus) {
		super();
		this.mNo = mNo;
		this.mId = mId;
		this.mPwd = mPwd;
		this.mName = mName;
		this.mgNo = mgNo;
		this.mEmail = mEmail;
		this.mPhone = mPhone;
		this.mAddress = mAddress;
		this.mGender = mGender;
		this.mAge = mAge;
		this.mCreateDate = mCreateDate;
		this.mUpdateDate = mUpdateDate;
		this.mDeleteDate = mDeleteDate;
		this.mPoint = mPoint;
		this.mStatus = mStatus;
	}



	public int getmNo() {
		return mNo;
	}



	public void setmNo(int mNo) {
		this.mNo = mNo;
	}



	public String getmId() {
		return mId;
	}



	public void setmId(String mId) {
		this.mId = mId;
	}



	public String getmPwd() {
		return mPwd;
	}



	public void setmPwd(String mPwd) {
		this.mPwd = mPwd;
	}



	public String getmName() {
		return mName;
	}



	public void setmName(String mName) {
		this.mName = mName;
	}



	public int getMgNo() {
		return mgNo;
	}



	public void setMgNo(int mgNo) {
		this.mgNo = mgNo;
	}



	public String getmEmail() {
		return mEmail;
	}



	public void setmEmail(String mEmail) {
		this.mEmail = mEmail;
	}



	public String getmPhone() {
		return mPhone;
	}



	public void setmPhone(String mPhone) {
		this.mPhone = mPhone;
	}



	public String getmAddress() {
		return mAddress;
	}



	public void setmAddress(String mAddress) {
		this.mAddress = mAddress;
	}



	public String getmGender() {
		return mGender;
	}



	public void setmGender(String mGender) {
		this.mGender = mGender;
	}



	public int getmAge() {
		return mAge;
	}



	public void setmAge(int mAge) {
		this.mAge = mAge;
	}



	public Date getmCreateDate() {
		return mCreateDate;
	}



	public void setmCreateDate(Date mCreateDate) {
		this.mCreateDate = mCreateDate;
	}



	public Date getmUpdateDate() {
		return mUpdateDate;
	}



	public void setmUpdateDate(Date mUpdateDate) {
		this.mUpdateDate = mUpdateDate;
	}



	public Date getmDeleteDate() {
		return mDeleteDate;
	}



	public void setmDeleteDate(Date mDeleteDate) {
		this.mDeleteDate = mDeleteDate;
	}



	public int getmPoint() {
		return mPoint;
	}



	public void setmPoint(int mPoint) {
		this.mPoint = mPoint;
	}



	public String getmStatus() {
		return mStatus;
	}



	public void setmStatus(String mStatus) {
		this.mStatus = mStatus;
	}


	@Override
	public String toString() {
		return "Member [mNo=" + mNo + ", mId=" + mId + ", mPwd=" + mPwd + ", mName=" + mName + ", mgNo=" + mgNo
				+ ", mEmail=" + mEmail + ", mPhone=" + mPhone + ", mAddress=" + mAddress + ", mGender=" + mGender
				+ ", mAge=" + mAge + ", mCreateDate=" + mCreateDate + ", mUpdateDate=" + mUpdateDate + ", mDeleteDate="
				+ mDeleteDate + ", mPoint=" + mPoint + ", mStatus=" + mStatus + "]";
	}
	
	


}
