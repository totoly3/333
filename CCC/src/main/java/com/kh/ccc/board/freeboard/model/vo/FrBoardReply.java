package com.kh.ccc.board.freeboard.model.vo;

import java.sql.Date;


public class FrBoardReply {
	private int frNo;			//자유게시판 댓글번호
	private int	fNo;			//자유게시판 참조글번호	
	private int	frWriter;		//댓글쓴이번호
	private String frContent;	//댓글내용	
	private int	frParentNo;		//상위댓글번호
	private int frLevel;		//댓글계층
	private Date frCreateDate;	//댓글작성시간	
	private Date frUpdateDate;	//댓글수정시간	
	private Date frDeleteDate;	//댓글삭제시간	
	private String frStatus;	//댓글상태
	
	public FrBoardReply() {
		super();
	}

	public FrBoardReply(int frNo, int fNo, int frWriter, String frContent, int frParentNo, int frLevel,
			Date frCreateDate, Date frUpdateDate, Date frDeleteDate, String frStatus) {
		super();
		this.frNo = frNo;
		this.fNo = fNo;
		this.frWriter = frWriter;
		this.frContent = frContent;
		this.frParentNo = frParentNo;
		this.frLevel = frLevel;
		this.frCreateDate = frCreateDate;
		this.frUpdateDate = frUpdateDate;
		this.frDeleteDate = frDeleteDate;
		this.frStatus = frStatus;
	}

	public int getFrNo() {
		return frNo;
	}

	public void setFrNo(int frNo) {
		this.frNo = frNo;
	}

	public int getfNo() {
		return fNo;
	}

	public void setfNo(int fNo) {
		this.fNo = fNo;
	}

	public int getFrWriter() {
		return frWriter;
	}

	public void setFrWriter(int frWriter) {
		this.frWriter = frWriter;
	}

	public String getFrContent() {
		return frContent;
	}

	public void setFrContent(String frContent) {
		this.frContent = frContent;
	}

	public int getFrParentNo() {
		return frParentNo;
	}

	public void setFrParentNo(int frParentNo) {
		this.frParentNo = frParentNo;
	}

	public int getFrLevel() {
		return frLevel;
	}

	public void setFrLevel(int frLevel) {
		this.frLevel = frLevel;
	}

	public Date getFrCreateDate() {
		return frCreateDate;
	}

	public void setFrCreateDate(Date frCreateDate) {
		this.frCreateDate = frCreateDate;
	}

	public Date getFrUpdateDate() {
		return frUpdateDate;
	}

	public void setFrUpdateDate(Date frUpdateDate) {
		this.frUpdateDate = frUpdateDate;
	}

	public Date getFrDeleteDate() {
		return frDeleteDate;
	}

	public void setFrDeleteDate(Date frDeleteDate) {
		this.frDeleteDate = frDeleteDate;
	}

	public String getFrStatus() {
		return frStatus;
	}

	public void setFrStatus(String frStatus) {
		this.frStatus = frStatus;
	}

	@Override
	public String toString() {
		return "FrBoardReply [frNo=" + frNo + ", fNo=" + fNo + ", frWriter=" + frWriter + ", frContent=" + frContent
				+ ", frParentNo=" + frParentNo + ", frLevel=" + frLevel + ", frCreateDate=" + frCreateDate
				+ ", frUpdateDate=" + frUpdateDate + ", frDeleteDate=" + frDeleteDate + ", frStatus=" + frStatus + "]";
	}
	
	
}
