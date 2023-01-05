package com.kh.ccc.shop.goods.model.service;


import java.util.ArrayList;

import org.springframework.stereotype.Service;

import com.kh.ccc.shop.goods.model.vo.Goods;
@Service

public interface GoodsService {

	public ArrayList<Goods> goodsList();

}

