package com.kh.ccc.shop.order.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.ccc.shop.order.model.service.OrderService;

@Controller
public class OrderController {
	
	@Autowired
	private OrderService orderService;
	
	@RequestMapping("insert.or")
	public String insertOrder(@RequestParam(value="currentPage", defaultValue="1") int currentPage
				,Model model) {
		// 주문시 할 것
		
		// 		1. Order insert
		//		- 주문한 회원번호 / 배송비 번호 / 주문일자 / 최종결제금액 / 송장번호 / 수신자명 / 배송주소 / 배송상세주소 / 우편번호 
		
		//		2. OrderDetail insert
		//		3. Shipping insert
		//		4. payment insert
		
		int result = orderService.insertOrder();
		
		return "dddd/sdssd";
	}
}
