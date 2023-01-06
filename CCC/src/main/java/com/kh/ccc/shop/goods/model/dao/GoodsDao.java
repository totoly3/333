package com.kh.ccc.shop.goods.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.ccc.shop.goods.model.vo.Goods;

@Repository
public class GoodsDao {

	//리스트 출력
	public ArrayList<Goods> selectList(SqlSessionTemplate sqlSession) {
		ArrayList<Goods> list = (ArrayList)sqlSession.selectList("goodsMapper.selectList");
		System.out.println("dao리스트 : "+list);
		return list;
	}
	
	//리스트 출력
	public ArrayList<Goods> selectList2(SqlSessionTemplate sqlSession, String category) {
		ArrayList<Goods> list = (ArrayList)sqlSession.selectList("goodsMapper.selectList",category);
		System.out.println("dao리스트2 : "+list);
		return list;
	}
	
	//글쓰기
	public int insertGoods(SqlSessionTemplate sqlSession, Object g) {
		return sqlSession.insert("goodsMapper.insertGoods",g);
	}
	
	//상세보기
	public Goods selectBoard(SqlSessionTemplate sqlSession, int goodsNo) {
		return sqlSession.selectOne("goodsMapper.selectBoard", goodsNo);

	}
	
}
