package com.kh.ccc.mypage.model.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.ccc.mypage.model.dao.MyPageDao;
import com.kh.ccc.mypage.model.vo.MyCharacter;
import com.kh.ccc.mypage.model.vo.MyCharacterAttach;
import com.kh.ccc.order.model.vo.Cart;
import com.kh.ccc.order.model.vo.DeliveryDetail;
import com.kh.ccc.order.model.vo.Goods;
import com.kh.ccc.order.model.vo.MyOrderDetail;
import com.kh.ccc.order.model.vo.Order;
import com.kh.ccc.order.model.vo.OrderDetail;
import com.kh.ccc.order.model.vo.OrderListByDate;
import com.kh.ccc.order.model.vo.Wish;

import oracle.net.aso.s;

@Service
public class MyPageImpl implements MyPageService{

		@Autowired
		MyPageDao myPageDao;
		
		@Autowired
		private SqlSessionTemplate sqlSession;
	
		
		//목록조회 리스트
		@Override
		public ArrayList<MyCharacter> selectchaList(int mNo){
			
			ArrayList<MyCharacter> chaList=myPageDao.selectchaList(sqlSession,mNo);
			
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
//		public int increaseCount(int cNo) {
//	
//			int count=myPageDao.increaseCount(sqlSession,cNo);
//			
//			System.out.println("saa"+count);
//			
//			return count;
//		}


		//상세보기 글조회
		@Override
		public MyCharacter selecectMyChar(int cNo) {
			
			MyCharacter cha=myPageDao.selecectMyChar(sqlSession,cNo);
			//System.out.println("sss"+cha);
			
			return cha;
		}


		//상세보기 파일조회
		@Override
		public ArrayList<MyCharacterAttach> selectChaList(int cNo) {
			
			ArrayList<MyCharacterAttach> mchalist=myPageDao.selectChaList(sqlSession,cNo);
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
		public ArrayList<OrderDetail> orderDetail(int oNo) {
			 
			ArrayList<OrderDetail> odlist=myPageDao.orderDetail(sqlSession,oNo);
			
			 return	odlist;
			 
		}

		//주문상세보기2.(join)
		@Override
		public MyOrderDetail myOrderDetail(int oNo) {
			
			MyOrderDetail md=myPageDao.myOrderDetail(sqlSession,oNo);
			
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
		public ArrayList<MyOrderDetail> selectRealOrderListView(int oNo) {
			
			ArrayList<MyOrderDetail> realOlist=myPageDao.selectRealOrderListView(sqlSession,oNo);
			
			return  realOlist;
		}


		
		//장바구니 조회
		@Override
		public ArrayList<Cart> selectCartList(int mNo) {
			
			ArrayList<Cart> cList=myPageDao.selectCartList(sqlSession,mNo);
					
			return cList;
		}


		//찜리스트 조회
		@Override
		public ArrayList<Wish> selectWishList(int mNo) {
			
			ArrayList<Wish> wList=myPageDao.selectWishList(sqlSession,mNo);
			
			return wList;
		}
		
}
