package com.kh.ccc.mypage.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.ccc.mypage.model.dao.MyPageDao;
import com.kh.ccc.mypage.model.vo.MyCharacter;
import com.kh.ccc.mypage.model.vo.MyCharacterAttach;
import com.kh.ccc.shop.cart.model.vo.Cart;
import com.kh.ccc.shop.goods.model.vo.WishGoods;
import com.kh.ccc.shop.order.model.vo.MyOrderDetail;
import com.kh.ccc.shop.order.model.vo.Order;
import com.kh.ccc.shop.order.model.vo.OrderDetail;
import com.kh.ccc.shop.order.model.vo.OrderListByDate;
import com.kh.ccc.shop.shipping.model.vo.DeliveryDetail;

@Service
public class MyPageImpl implements MyPageService{

		@Autowired
		MyPageDao myPageDao;
		
		@Autowired
		private SqlSessionTemplate sqlSession;
	
		
		//목록조회 리스트
		@Override
		public ArrayList<MyCharacter> selectchaList(int memberNo){
			
			ArrayList<MyCharacter> chaList=myPageDao.selectchaList(sqlSession,memberNo);
			
			return chaList;
		}
		
		
		//게시글,리스트 등록
		@Override
		public int mycharInsert(MyCharacter cha, ArrayList<MyCharacterAttach> mchalist) {
			
			int result=myPageDao.mycharInsert(sqlSession,cha,mchalist); //게시글 넣은 결과
					
			return result;
		}
	
	
		//상세보기 조회수 증가
//		@Override
//		public int increaseCount(int characterNo) {
//	
//			int count=myPageDao.increaseCount(sqlSession,characterNo);
//			
//			System.out.println("saa"+count);
//			
//			return count;
//		}


		//상세보기 글조회
		@Override
		public MyCharacter selecectMyChar(int characterNo) {
			
			MyCharacter cha=myPageDao.selecectMyChar(sqlSession,characterNo);
			//System.out.println("sss"+cha);
			
			return cha;
		}


		//상세보기 파일조회
		@Override
		public ArrayList<MyCharacterAttach> selectChaList(int characterNo) {
			
			ArrayList<MyCharacterAttach> mchalist=myPageDao.selectChaList(sqlSession,characterNo);
			//System.out.println("sss"+mchalist);
			
			return mchalist;
		}


		//실제 업데이트
		@Override
		public int updateMyChar(MyCharacter cha, ArrayList<MyCharacterAttach> newmchalist) {
			
			//실제 업데이트
			int result=myPageDao.updateMyChar(sqlSession,cha,newmchalist);
			
			return result;
		}


		//삭제
		@Override
		public int delteMyChar(int cNo) {
			
			//글삭제
			int result=myPageDao.deleteMyChar(sqlSession,cNo);
			
			//첨부파일 삭제
			int result1=myPageDao.deleteMyCharAttach(sqlSession,cNo);
			
			int finalResult=result*result1;
			
			return finalResult;
			
		}


		//주문상세보기1. 리스트 (join캐릭터)
		@Override
		public ArrayList<OrderDetail> orderDetail(int orderNo) {
			 
			ArrayList<OrderDetail> odlist=myPageDao.orderDetail(sqlSession,orderNo);
			
			 return	odlist;
			 
		}

		//주문상세보기2.(join)
		@Override
		public MyOrderDetail myOrderDetail(int orderNo) {
			
			MyOrderDetail md=myPageDao.myOrderDetail(sqlSession,orderNo);
			
			return md;
		}


		//배송조회
		@Override
		public DeliveryDetail selectDeliveryDetail(OrderDetail od) {
			
			DeliveryDetail deliveryInfo=myPageDao.selectDeliveryDetail(sqlSession,od);
			
			return deliveryInfo;
			
		}


		//기간별 배송조회(주문번호 조회용)
		@Override
		public ArrayList<Order> selectOrderListView(OrderListByDate olByd) {
			
			ArrayList<Order> oList =myPageDao.selectOrderListView(sqlSession,olByd);
			//System.out.println("oList"+oList);
			
			return oList;
			
		}


		//실제 배송조회
		@Override
		public ArrayList<MyOrderDetail> selectRealOrderListView(int orderNo) {
			
			ArrayList<MyOrderDetail> realOlist=myPageDao.selectRealOrderListView(sqlSession,orderNo);
			
			return  realOlist;
		}


		
		//장바구니 조회
		@Override
		public ArrayList<Cart> selectCartList(int memberNo) {
			
			ArrayList<Cart> cList=myPageDao.selectCartList(sqlSession,memberNo);
					
			return cList;
		}


		//찜리스트 조회
		@Override
		public ArrayList<WishGoods> selectWishList(int memberNo) {
			
			ArrayList<WishGoods> wList=myPageDao.selectWishList(sqlSession,memberNo);
			
			return wList;
		}
		
}
