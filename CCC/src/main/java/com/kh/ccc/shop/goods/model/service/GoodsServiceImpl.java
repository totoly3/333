package com.kh.ccc.shop.goods.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.ccc.shop.goods.model.dao.GoodsDao;
import com.kh.ccc.shop.goods.model.vo.Goods;

	@Service
	public class GoodsServiceImpl implements GoodsService{
		
	@Autowired
	private GoodsDao goodsDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public ArrayList<Goods> goodsList() {
		return goodsDao.selectList(sqlSession);
	}

}