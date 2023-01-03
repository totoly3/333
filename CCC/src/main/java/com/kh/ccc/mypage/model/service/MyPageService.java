package com.kh.ccc.mypage.model.service;

import java.util.ArrayList;
import java.util.Date;

import com.kh.ccc.mypage.model.vo.MyCharacter;
import com.kh.ccc.mypage.model.vo.MyCharacterAttach;
import com.kh.ccc.order.model.vo.DeliveryDetail;
import com.kh.ccc.order.model.vo.Goods;
import com.kh.ccc.order.model.vo.MyOrderDetail;
import com.kh.ccc.order.model.vo.Order;
import com.kh.ccc.order.model.vo.OrderDetail;
import com.kh.ccc.order.model.vo.OrderListByDate;

public interface MyPageService {

	//마이캐릭터 목록조회
	ArrayList<MyCharacter> selectchaList(int mNo);
	
	//마이캐릭터 입력
	int mycharInsert(MyCharacter cha, ArrayList<MyCharacterAttach> mchalist);

	//마이캐릭터 상세보기1.  조회수 증가
    //int increaseCount(int cNo);

	//마이캐릭터 상세보기2. 글 조회
	MyCharacter selecectMyChar(int cNo);

	//마이캐릭터 상세보기3. 이미지리스트 조회
	ArrayList<MyCharacterAttach> selectChaList(int cNo);

	//마이캐릭터 실제업데이트
	int updateMyChar(MyCharacter cha, ArrayList<MyCharacterAttach> newlist);

	//마이캐릭터 삭제
	int delteMyChar(int cNo);

	//주문상세페이지1. 리스트조회
	ArrayList<OrderDetail> orderDetail(int oNo);

	//주문상세페이지2. 조회(join)
	MyOrderDetail myOrderDetail(int oNo);


	//배송정보 조회(상품상세번호객체-상품상세번호, 상품번호 필요)
	DeliveryDetail selectDeliveryDetail(OrderDetail od);

	//기간별 주문리스트 (시작날짜,끝날짜, 사용자번호 객체를 담아서 가져감)
    //ArrayList<Order> selectOrderListView(int userNo, Date startDate, Date endDate);
	ArrayList<Order> selectOrderListView(OrderListByDate tbd);

	//기간별 주문리스트(실제 주문리스트)
	ArrayList<MyOrderDetail> selectRealOrderListView(int oNo);
	

}
