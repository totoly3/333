package com.kh.ccc.mypage.model.dao;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

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

@Repository
public class MyPageDao {

	
	//목록조회
	public ArrayList<MyCharacter> selectchaList(SqlSessionTemplate sqlSession, int mNo) {
		return (ArrayList)sqlSession.selectList("myPageMapper.selectchaList",mNo);
	}
	
	//글과 파일리스트를 나눠서 넣어줌
	public int mycharInsert(SqlSessionTemplate sqlSession, MyCharacter cha, ArrayList<MyCharacterAttach> mchalist) {
		
		//글을 넣은 결과
		int chaResult=sqlSession.insert("myPageMapper.mycharInsert",cha);
		//System.out.println("1111111111111");
		//파일결과 1로 초기화
		int mchalistResult=1;
		
		if (chaResult>0){ //글넣은 결과가 0보다 크다면
			
		  for(MyCharacterAttach mca :mchalist) {
			  mchalistResult *=sqlSession.insert("myPageMapper.mycharAtInsert",mca);
		   }
			
		}
		
		return chaResult*mchalistResult;
	   }

	
	//조회수 증가
//	public int increaseCount(SqlSessionTemplate sqlSession, int cNo) {
//		return sqlSession.update("myPageMapper.increaseCount",cNo);
//		
//	}

	//글 select
	public MyCharacter selecectMyChar(SqlSessionTemplate sqlSession, int cNo) {
		return sqlSession.selectOne("myPageMapper.selecectMyChar",cNo);
	}

	//글 파일 select
	public ArrayList<MyCharacterAttach> selectChaList(SqlSessionTemplate sqlSession, int cNo) {
		return (ArrayList)sqlSession.selectList("myPageMapper.selectMyCharList",cNo);
	}

	
	public int updateMyChar(SqlSessionTemplate sqlSession, MyCharacter cha, ArrayList<MyCharacterAttach> newlist) {
	  
	  //System.out.println("Dao 캐릭터객체 넘?"+cha);	
		System.out.println("Dao파일수정리스트"+newlist);
		
	  //글수정
	  int result= sqlSession.update("myPageMapper.updateMyChar", cha);	
	  System.out.println("Dao글수정확인"+result);
	 	
	  int result1=1;
	  
	  //글수정이 되었으면 파일수정
	  if(result>0) {
	     for( MyCharacterAttach mca : newlist) {
	    	 result1*=sqlSession.insert("myPageMapper.updateMyCharAttach", mca);
	     }
	  }	
	  
	  System.out.println("Dao파일수정확인"+result1);
	  return result*result1;
		
	}


	//글 삭제
	public int deleteMyChar(SqlSessionTemplate sqlSession, int cNo) {
		return sqlSession.delete("myPageMapper.deleteMyChar",cNo);
	}

	//첨부파일 삭제
	public int deleteMyCharAttach(SqlSessionTemplate sqlSession, int cNo) {
		return sqlSession.update("myPageMapper.deleteMyCharAttach",cNo);
	}

	
	//1.주문상세보기 리스트(주문번호)
	public ArrayList<OrderDetail> orderDetail(SqlSessionTemplate sqlSession, int oNo){
		
		return (ArrayList)sqlSession.selectList("myPageMapper.selectOrderDetail",oNo);
		
	}
	
	//2.주문상세보기(주문번호) join
	public MyOrderDetail myOrderDetail(SqlSessionTemplate sqlSession, int oNo) {
		
		return sqlSession.selectOne("myPageMapper.selectMyOrderDetail",oNo);
	}

	//주문번호 얻기용 
	public OrderDetail selectOrderDetail(SqlSessionTemplate sqlSession, int odNo) {
		
		return sqlSession.selectOne("myPageMapper.selectOnoFromOrderDetail");
	}
	
	//배송조회
	public DeliveryDetail selectDeliveryDetail(SqlSessionTemplate sqlSession, OrderDetail od) {
		
		return sqlSession.selectOne("myPageMapper.selectDeliveryDetail", od);
		
	}

	
	//1. (기간별)주문리스트조회  주문번호뽑기용
	public ArrayList<Order> selectOrderListView(SqlSessionTemplate sqlSession, OrderListByDate olByd) {
		
		//주문리스트
		return (ArrayList)sqlSession.selectList("myPageMapper.selectOrderListView", olByd);
		
	}

	//2. 실제 주문리스트조회 
	public ArrayList<MyOrderDetail> selectRealOrderListView(SqlSessionTemplate sqlSession, int oNo) {
		
		//주문리스트
		return (ArrayList)sqlSession.selectList("myPageMapper.selectRealOrderListView",oNo);
		
	}
	
	
	//장바구니 조회
	public ArrayList<Cart> selectCartList(SqlSessionTemplate sqlSession, int mNo) {
		
	   return (ArrayList)sqlSession.selectList("myPageMapper.selectCartList",mNo);
		
	}

	
	//찜하기 조회
	public ArrayList<Wish> selectWishList(SqlSessionTemplate sqlSession, int mNo) {
		return (ArrayList)sqlSession.selectList("myPageMapper.selectWishList",mNo);
	}
	
	
}
