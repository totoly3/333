package com.kh.ccc.admin.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class Admin {
//	A_NO	NUMBER
//	AG_NO	NUMBER
//	A_ID	VARCHAR2(30 BYTE)
//	A_PWD	VARCHAR2(30 BYTE)
//	A_NAME	VARCHAR2(30 BYTE)
//	AP_NO	NUMBER
//	A_RESIDENT_NO	VARCHAR2(30 BYTE)
//	A_EMAIL	VARCHAR2(30 BYTE)
//	A_PHONE	VARCHAR2(30 BYTE)
//	A_HIRE_DATE	DATE
//	A_QUIT_DATE	DATE
//	A_MODIFY_DATE	DATE
//	A_STATUS	VARCHAR2(1 BYTE)
	private int adminNo;
	private int adminGradeNo;
	private String adminId;
	private String adminPwd;
	private String adminName;
	private int adminPositionNo;
	private String adminResidentNo;
	private String adminEmail;
	private String adminPhone;
	private Date adminHireDate;
	private Date adminQuitDate;
	private Date adminModifyDate;
	private String adminStatus;
}
