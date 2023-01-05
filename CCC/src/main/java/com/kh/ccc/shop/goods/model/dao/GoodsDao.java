package com.kh.ccc.shop.goods.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.ccc.shop.goods.model.vo.Goods;

@Repository
public class GoodsDao {

	//리스트 출력
	public ArrayList<Goods> selectList(SqlSessionTemplate sqlSession) {
		ArrayList<Goods> list = (ArrayList)sqlSession.selectList("goods-Mapper.selectList");
		System.out.println("dao리스트 : "+list);
		return list;
	}
	
	//리스트 출력
	public ArrayList<Goods> selectList2(SqlSessionTemplate sqlSession, String category) {
		ArrayList<Goods> list = (ArrayList)sqlSession.selectList("goods-Mapper.selectList",category);
		System.out.println("dao리스트2 : "+list);
		return list;
	}

	public int insertGoods(SqlSessionTemplate sqlSession, Object g) {
		return sqlSession.insert("goods-Mapper.insertGoods",g);
	}
	
	

}
