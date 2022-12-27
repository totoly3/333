package com.kh.ccc.order.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class Order {
	
	int orderNo;	  		  //O_NO	NUMBER 주문번호
	int memberNo;	  		  //M_NO	NUMBER 사용자번호
	int deliveryNo;	    	  //D_NO	NUMBER 배송비번호
	Date orderDate;	    	  //O_DATE	DATE 주문일자
	int orderFinalAmount;	  //O_FINAL_AMOUNT NUMBER 최종결제금액
	String orderInvoidNo;	  //O_INVOICE_NO	VARCHAR2(20 BYTE) 송장번호
	String orderReceiverName; //O_RECEIVER_NAME	VARCHAR2(20 BYTE) 수신자명
	String	orderAddress;     //O_ADDRESS	VARCHAR2(100 BYTE) 배송주소
	String orderAddressDetail;//O_ADDRESS_DETAIL	VARCHAR2(100 BYTE) 배송상세주소
	String orderzipCode;	  //O_ZIP_CODE	VARCHAR2(10 BYTE) 우편번호
	String orderComment;	  //O_COMMENT	VARCHAR2(100 BYTE)배송메세지
	String orderPhone;	      //O_PHONE	VARCHAR2(50 BYTE)전화번호
	String orderPackage;	  //O_PA	NUMBER 택배회사명
	String orderDetailStatus; //O_DELIVERY_STATUS	VARCHAR2(20 BYTE)
	String orderStatus;       //O_STATUS	VARCHAR2(1 BYTE)
		

}
