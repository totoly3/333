package com.kh.ccc.shop.order.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.ccc.shop.order.model.dao.OrderDao;

@Service
public class OrderServiceImpl implements OrderService{
	@Autowired
	OrderDao orderDao = new OrderDao();
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public int insertOrder() {
		int result = orderDao.insertOrder();
		return result;
	}
	
	
}
