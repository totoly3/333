package com.kh.ccc.order.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class OrderDetail {

	int orderDetailNo;     //OD_NO	NUMBER 주문상세번호
	int orderNo;      //O_NO	NUMBER 주문번호
	int goodsNo;      //G_NO	NUMBER 굿즈번호
	int goodsPrice;   //G_PRICE	NUMBER 굿즈가격
 	int quantity; //QUANTITY NUMBER 굿즈구매수량
  	int option1;  //OPTION1	NUMBER 굿즈옵션1
	int option2;  //OPTION2	NUMBER 굿즈옵션2
	
}
