package com.kh.ccc.shop.goods.model.service;

import java.util.ArrayList;

import com.kh.ccc.common.model.vo.PageInfo;
import com.kh.ccc.shop.goods.model.vo.Goods;

public interface GoodsService {
	
	//그냥 리스트 가기
	public ArrayList<Goods> goodsList();
	
	//네비에서 카테고리 들고가기
	public ArrayList<Goods> goodsList(String category);
	
	//굿즈 글쓰기
	public int insertGoods(Goods g);
	
	//굿즈 디테일
	public Goods selectGoods(int gno);
	
	

}