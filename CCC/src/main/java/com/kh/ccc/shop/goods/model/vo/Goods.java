package com.kh.ccc.shop.goods.model.vo;

import java.sql.Date;

public class Goods {
	private int	gNo;
	private int	cNo;
	private String gName;
	private String gBrand;
	private String category;
	private String stock;
	private String price;
	private String content;
	private String originName1;
	private String changeName1;
	private String originName2;
	private String changeName2;
	private String originName3;
	private String changeName3;
	private String originName4;
	private String changeName4;
	private String filePath;
	private Date enrollDate;
	private String status;
	
	public Goods() {
		super();
	}

	public Goods(int gNo, int cNo, String gName, String gBrand, String category, String stock, String price,
			String content, String originName1, String changeName1, String originName2, String changeName2,
			String originName3, String changeName3, String originName4, String changeName4, String filePath,
			Date enrollDate, String status) {
		super();
		this.gNo = gNo;
		this.cNo = cNo;
		this.gName = gName;
		this.gBrand = gBrand;
		this.category = category;
		this.stock = stock;
		this.price = price;
		this.content = content;
		this.originName1 = originName1;
		this.changeName1 = changeName1;
		this.originName2 = originName2;
		this.changeName2 = changeName2;
		this.originName3 = originName3;
		this.changeName3 = changeName3;
		this.originName4 = originName4;
		this.changeName4 = changeName4;
		this.filePath = filePath;
		this.enrollDate = enrollDate;
		this.status = status;
	}



	public int getgNo() {
		return gNo;
	}

	public void setgNo(int gNo) {
		this.gNo = gNo;
	}

	public int getcNo() {
		return cNo;
	}

	public void setcNo(int cNo) {
		this.cNo = cNo;
	}

	public String getgName() {
		return gName;
	}

	public void setgName(String gName) {
		this.gName = gName;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getStock() {
		return stock;
	}

	public void setStock(String stock) {
		this.stock = stock;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getOriginName1() {
		return originName1;
	}

	public void setOriginName1(String originName1) {
		this.originName1 = originName1;
	}

	public String getChangeName1() {
		return changeName1;
	}

	public void setChangeName1(String changeName1) {
		this.changeName1 = changeName1;
	}

	public String getOriginName2() {
		return originName2;
	}

	public void setOriginName2(String originName2) {
		this.originName2 = originName2;
	}

	public String getChangeName2() {
		return changeName2;
	}

	public void setChangeName2(String changeName2) {
		this.changeName2 = changeName2;
	}

	public String getOriginName3() {
		return originName3;
	}

	public void setOriginName3(String originName3) {
		this.originName3 = originName3;
	}

	public String getChangeName3() {
		return changeName3;
	}

	public void setChangeName3(String changeName3) {
		this.changeName3 = changeName3;
	}

	public String getOriginName4() {
		return originName4;
	}

	public void setOriginName4(String originName4) {
		this.originName4 = originName4;
	}

	public String getChangeName4() {
		return changeName4;
	}

	public void setChangeName4(String changeName4) {
		this.changeName4 = changeName4;
	}

	public String getFilePath() {
		return filePath;
	}

	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}

	public Date getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	

	public String getgBrand() {
		return gBrand;
	}

	public void setgBrand(String gBrand) {
		this.gBrand = gBrand;
	}

	@Override
	public String toString() {
		return "Goods [gNo=" + gNo + ", cNo=" + cNo + ", gName=" + gName + ", gBrand=" + gBrand + ", category="
				+ category + ", stock=" + stock + ", price=" + price + ", content=" + content + ", originName1="
				+ originName1 + ", changeName1=" + changeName1 + ", originName2=" + originName2 + ", changeName2="
				+ changeName2 + ", originName3=" + originName3 + ", changeName3=" + changeName3 + ", originName4="
				+ originName4 + ", changeName4=" + changeName4 + ", filePath=" + filePath + ", enrollDate=" + enrollDate
				+ ", status=" + status + "]";
	}


}
