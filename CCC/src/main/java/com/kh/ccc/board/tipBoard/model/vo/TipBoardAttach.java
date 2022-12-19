package com.kh.ccc.board.tipBoard.model.vo;

public class TipBoardAttach {
	private int taNo;				//자유글 첨부파일 번호	FA_NO	NUMBER
	private int tNo;				//참조 자유글 번호	F_NO	NUMBER
	private String taOrginName;		//첨부파일 수정전 파일명	FA_ORIGIN_NAME	VARCHAR2(500 BYTE)
	private String taChangeName;	//첨부파일 수정후 파일명	FA_CHANGE_NAME	VARCHAR2(500 BYTE)
	private String taFilePath;		//첨부파일 경로	FA_FILE_PATH	VARCHAR2(500 BYTE)
	private String taStatus;		//	FA_STATUS	VARCHAR2(1 BYTE)
	
	public TipBoardAttach() {
		super();
	}

	public TipBoardAttach(int taNo, int tNo, String taOrginName, String taChangeName, String taFilePath,
			String taStatus) {
		super();
		this.taNo = taNo;
		this.tNo = tNo;
		this.taOrginName = taOrginName;
		this.taChangeName = taChangeName;
		this.taFilePath = taFilePath;
		this.taStatus = taStatus;
	}

	public int getTaNo() {
		return taNo;
	}

	public void setTaNo(int taNo) {
		this.taNo = taNo;
	}

	public int gettNo() {
		return tNo;
	}

	public void settNo(int tNo) {
		this.tNo = tNo;
	}

	public String getTaOrginName() {
		return taOrginName;
	}

	public void setTaOrginName(String taOrginName) {
		this.taOrginName = taOrginName;
	}

	public String getTaChangeName() {
		return taChangeName;
	}

	public void setTaChangeName(String taChangeName) {
		this.taChangeName = taChangeName;
	}

	public String getTaFilePath() {
		return taFilePath;
	}

	public void setTaFilePath(String taFilePath) {
		this.taFilePath = taFilePath;
	}

	public String getTaStatus() {
		return taStatus;
	}

	public void setTaStatus(String taStatus) {
		this.taStatus = taStatus;
	}

	@Override
	public String toString() {
		return "TipBoardAttach [taNo=" + taNo + ", tNo=" + tNo + ", taOrginName=" + taOrginName + ", taChangeName="
				+ taChangeName + ", taFilePath=" + taFilePath + ", taStatus=" + taStatus + "]";
	}
	
	
	
}
