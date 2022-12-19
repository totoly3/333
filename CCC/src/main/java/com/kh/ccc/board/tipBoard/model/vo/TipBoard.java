package com.kh.ccc.board.tipBoard.model.vo;

import java.sql.Date;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

public class TipBoard {
	//
	 private int	tNo;			// 팁 게시판 글번호			
	 private int	tWriter;		// 팁 게시판 작성자번호
	 private int 	tType;			// 팁 게시판 유형
	 private String tTitle;			// 팁 게시판 제목		
	 private String tContent;		// 팁 게시판 내용	
	 private int	tCount;			// 팁 게시판 조회수	
	 private Date	tCreateDate;	// 팁 게시판 작성일			
	 private Date	tUpdateDate;	// 팁 게시판 수정일	
	 private Date	tDeleteDate;	// 팁 게시판 삭제일			
	 private String tStatus;		// 팁 게시판 상태			
	 private String tTitleimg;  	// 팁 게시판 파일이미지
	 
	 
	public TipBoard() {
		super();
	}

	public TipBoard(int tNo, int tWriter, int tType, String tTitle, String tContent, int tCount, Date tCreateDate,
			Date tUpdateDate, Date tDeleteDate, String tStatus, String tTitleimg) {
		super();
		this.tNo = tNo;
		this.tWriter = tWriter;
		this.tType = tType;
		this.tTitle = tTitle;
		this.tContent = tContent;
		this.tCount = tCount;
		this.tCreateDate = tCreateDate;
		this.tUpdateDate = tUpdateDate;
		this.tDeleteDate = tDeleteDate;
		this.tStatus = tStatus;
		this.tTitleimg = tTitleimg;
	}

	public int gettNo() {
		return tNo;
	}

	public void settNo(int tNo) {
		this.tNo = tNo;
	}

	public int gettWriter() {
		return tWriter;
	}

	public void settWriter(int tWriter) {
		this.tWriter = tWriter;
	}

	public int gettType() {
		return tType;
	}

	public void settType(int tType) {
		this.tType = tType;
	}

	public String gettTitle() {
		return tTitle;
	}

	public void settTitle(String tTitle) {
		this.tTitle = tTitle;
	}

	public String gettContent() {
		return tContent;
	}

	public void settContent(String tContent) {
		this.tContent = tContent;
	}

	public int gettCount() {
		return tCount;
	}

	public void settCount(int tCount) {
		this.tCount = tCount;
	}

	public Date gettCreateDate() {
		return tCreateDate;
	}

	public void settCreateDate(Date tCreateDate) {
		this.tCreateDate = tCreateDate;
	}

	public Date gettUpdateDate() {
		return tUpdateDate;
	}

	public void settUpdateDate(Date tUpdateDate) {
		this.tUpdateDate = tUpdateDate;
	}

	public Date gettDeleteDate() {
		return tDeleteDate;
	}

	public void settDeleteDate(Date tDeleteDate) {
		this.tDeleteDate = tDeleteDate;
	}

	public String gettStatus() {
		return tStatus;
	}

	public void settStatus(String tStatus) {
		this.tStatus = tStatus;
	}

	public String gettTitleimg() {
		return tTitleimg;
	}

	public void settTitleimg(String tTitleimg) {
		this.tTitleimg = tTitleimg;
	}

	@Override
	public String toString() {
		return "TipBoard [tNo=" + tNo + ", tWriter=" + tWriter + ", tType=" + tType + ", tTitle=" + tTitle
				+ ", tContent=" + tContent + ", tCount=" + tCount + ", tCreateDate=" + tCreateDate + ", tUpdateDate="
				+ tUpdateDate + ", tDeleteDate=" + tDeleteDate + ", tStatus=" + tStatus + ", tTitleimg=" + tTitleimg
				+ "]";
	}
 
 
}
