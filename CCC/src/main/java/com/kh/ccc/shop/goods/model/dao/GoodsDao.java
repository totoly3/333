package com.kh.ccc.shop.goods.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.ccc.shop.goods.model.vo.Goods;

@Repository
public class GoodsDao {

	public ArrayList<Goods> selectList(SqlSessionTemplate sqlSession) {
		
		ArrayList<Goods> list = (ArrayList)sqlSession.selectList("goodsMapper.selectList");
		
		System.out.println("dao리스트"+list);
		return list;
	}
	
}
