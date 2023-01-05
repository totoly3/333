package com.kh.ccc.shop.goods.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.ccc.shop.goods.model.service.GoodsService;
import com.kh.ccc.shop.goods.model.vo.Goods;


@Controller
public class GoodsController {
	
	@Autowired private GoodsService goodsService;
	
	@RequestMapping("goodsMain.go")
	public String goCart(HttpSession session, Model model) {
		
		return "shop/goods/goodsMain";
	}
	

	//굿즈 리스트 보내기
	@RequestMapping("list.go")
	public String StickerListView(HttpSession session, Model model, int menu) {
		
		System.out.println("왜 안 넘어감?"+menu);
		
		final int STICKER = 1;
		final int POSTER = 2;
		final int MASKING_TAPE = 3;
		final int GIFT_WRAPPING = 4;
		final int BADGE_WAPEN = 5;
		final int DIARY = 6;
		
		/*
			final int Planner = 7;
			final int Calendar = 8;
			final int Scheduler = 9;
			final int Organizer = 10;
			final int Post it = 11;
			final int Memo paper = 12;
			final int Basic Note = 13;
			final int Hardcover Note = 14;
			final int Spring Note = 15;
			final int Pen = 16;
			final int Card / Envelope = 17;
			final int File binder = 18;
			final int Art tools = 19;
			final int Bag = 20;
			final int Pouch = 21;
			final int Umbrella = 22;
			final int Carrier = 23;
			final int Phone = 24;
			final int Tablet = 25;
			final int PC = 26;
			final int Camera = 27;
			final int Skin care = 28;
			final int MAke up = 29;
			final int Cleansing = 30;
		*/
		
		ArrayList<Goods> list = new ArrayList<>();
		
		//게시글 받아오기
		switch (menu) {
		case STICKER :  //스티커에 해당되는 리스트 받아오기
			list = goodsService.goodsList();
			break;
//		case POSTER :  //포스터에 해당되는 리스트 받아오기
//			ArrayList<Goods> list = goodsService.goodsList();
//			break;
		}
		System.out.println(list);
		
		//보내기
		model.addAttribute("list",list);
		System.out.println("list.go : " +list);
		
		return "shop/goods/goodsListView";
	}
		
	
	
	//굿즈 메인 페이지로 보내기
	@RequestMapping("detail.go")
	public String GoodsDetailPage() {
		return "shop/goods/goodsDetailView";
	}
		
	//네비 페이지로 보내기
	@RequestMapping("navi.go")
	public String NaviPage() {
		return "shop/goods/goodsNavi";
	}

}
