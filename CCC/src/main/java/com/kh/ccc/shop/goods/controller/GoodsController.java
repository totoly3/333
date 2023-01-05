package com.kh.ccc.shop.goods.controller;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.ccc.shop.goods.model.service.GoodsService;
import com.kh.ccc.shop.goods.model.vo.Goods;

@Controller
public class GoodsController {
	@Autowired private GoodsService goodsService;
	
	//굿즈 메인 페이지로 보내기
	@RequestMapping("cart.ca")
	public String GoodsMainPage() {
		return "shop/goods/goodsMainPage";
	}
	
	//굿즈 리스트 보내기
	@RequestMapping("list.go")
	public String StickerListView(HttpSession session, Model model, int menu) {
		final int STICKER = 1;
		final int POSTER = 2;
		final int MASKING = 3;
		final int GIFT = 4;
		final int BADGE = 5;
		final int DIARY = 6;
		final int PLANNER = 7;
		final int CALENDAR = 8;
		final int SCHEDULER = 9;
		final int ORGANIZER = 10;
		final int POSTIT = 11;
		final int MEMO = 12;
		final int BASIC = 13;
		final int HARDCOVER = 14;
		final int SPRING = 15;
		final int PEN = 16;
		final int CARD = 17;
		final int BINDER = 18;
		final int ART = 19;
		final int BAG = 20;
		final int POUCH = 21;
		final int UMBRELLA = 22;
		final int CARRIER = 23;
		final int PHONE = 24;
		final int TABLET = 25;
		final int PC = 26;
		final int CAMERA = 27;
		final int SKINCARE = 28;
		final int MAKEUP = 29;
		final int CLEANSING = 30;
		
		ArrayList<Goods> list = new ArrayList<>();
		
		//게시글 받아오기
		switch (menu) {
		case STICKER :  //스티커에 해당되는 리스트 받아오기
			list = goodsService.goodsList("sticker");
			break;
		case POSTER : list = goodsService.goodsList("poster"); break;
		case MASKING : list = goodsService.goodsList("masking"); break;
		case GIFT : list = goodsService.goodsList("gift"); break;
		case BADGE : list = goodsService.goodsList("badge"); break;
		case DIARY : list = goodsService.goodsList("diary"); break;
		case PLANNER : list = goodsService.goodsList("planner"); break;
		case CALENDAR : list = goodsService.goodsList("calendar"); break;
		case SCHEDULER : list = goodsService.goodsList("scheduler"); break;
		case ORGANIZER : list = goodsService.goodsList("organizer"); break;
		case POSTIT : list = goodsService.goodsList("postit"); break;
		case MEMO : list = goodsService.goodsList("memo"); break;
		case BASIC : list = goodsService.goodsList("basic"); break;
		case HARDCOVER : list = goodsService.goodsList("hardcover"); break;
		case SPRING : list = goodsService.goodsList("spring"); break;
		case PEN : list = goodsService.goodsList("pen"); break;
		case CARD : list = goodsService.goodsList("card"); break;
		case BINDER : list = goodsService.goodsList("binder"); break;
		case ART : list = goodsService.goodsList("art"); break;
		case BAG : list = goodsService.goodsList("bag"); break;
		case POUCH : list = goodsService.goodsList("pouch"); break;
		case UMBRELLA : list = goodsService.goodsList("umbrella"); break;
		case CARRIER : list = goodsService.goodsList("carrier"); break;
		case PHONE : list = goodsService.goodsList("phone"); break;
		case TABLET : list = goodsService.goodsList("tablet"); break;
		case PC : list = goodsService.goodsList("pc"); break;
		case CAMERA : list = goodsService.goodsList("camera"); break;
		case SKINCARE : list = goodsService.goodsList("skincare"); break;
		case MAKEUP : list = goodsService.goodsList("makeup"); break;
		case CLEANSING : list = goodsService.goodsList("cleansing"); break;
		}

		//보내기
		model.addAttribute("list",list);
		System.out.println("list.go : " +list);
		
		return "shop/goods/goodsListView";
	}

	
	//굿즈 디테일 페이지로 보내기
	@RequestMapping("detail.go")
	public String GoodsDetailPage() {
		return "shop/goods/goodsDetailView";
	}
		
	//네비 페이지로 보내기
	@RequestMapping("navi.go")
	public String NaviPage() {
		return "shop/goods/goodsNavi";
	}
	
	//글작성 페이지로 이동시키는 메소드 (포워드)
	@RequestMapping("insert.go")
	public String insertGoods() {
		return "shop/goods/goodsEnrollForm";
	}
	
	//글 등록을 시키는 메소드
	@PostMapping("insert.go")
	public ModelAndView insertBoard(Goods g,
									MultipartFile upfile,
									ModelAndView mv,
									HttpSession session) {
		System.out.println(g);
		System.out.println(upfile);
	
		//전달된 파일이 있을 경우 - 파일명 수정 후에 서버로 업로드 - 원본명, 서버에 업로드된 경로를 이어서 다운로드 처리
		System.out.println(upfile.getOriginalFilename()); 		//파일을 업로드하지 않고 호출했을 시 "" 처리가 된다.
		if(!upfile.getOriginalFilename().equals("")) { 			//파일 업로드가 되었다면 파일명 수정 후 서버로 업로드 //짱구.jpg -> 20221202113413344555.jpg
			
			//아래에서 모듈화 시킨 saveFile 메소드 활용
			String changeName = saveFile(upfile,session);
			
			// 원본명, 서버에 업로드한 경로를 Board 객체에 담아주기
			g.setOriginName1(upfile.getOriginalFilename());
			g.setChangeName1("resources/uploadfiles/+changeName");
			
		}

		//만약 첨부파일이 없다면 - 작성자, 내용, 제목
		//첨부파일이 있다면 - 작성자, 제목, 내용, 원본이름, 경로, 저장경로
		int result = goodsService.insertGoods(g);
		
		System.out.println("굿즈 컨트롤러"+g);
		System.out.println("굿즈 컨트롤러"+upfile);
		
		if(result>0) { //성공시 - 게시판 리스트 띄워주기 (list.bo 재요청)
			
			session.setAttribute("alertMsg", "게시글이 등록되었습니다.");
			mv.setViewName("redirect:/list.go");
		}else { //실패 - 에러페이지 포워딩
			mv.addObject("errorMsg","게시글 등록 실패").setViewName("common/errorPage");
			System.out.println("등록실패");
		}
		return mv;
	}
	
	
	//현재 넘어온 첨부파일 그 자체를 서버의 폴더에 저장시키는 메소드(모듈)
		public String saveFile(MultipartFile upfile, HttpSession session) {
			
			//1. 원본 파일명 뽑기
			String originName = upfile.getOriginalFilename();
			
			//2. 시간 형식 뽑기 - "20221205153533"
			String currentTime = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
			
			//3. 확장자 추출하기
			String ext = originName.substring(originName.lastIndexOf("."));
			
			//4. 랜덤 숫자 추출하기(5자리)
			int ranNum = (int)(Math.random() * 90000 + 10000); // 5자리 랜덤값
			
			//5. 모두 이어붙이기
			String changeName = currentTime + ranNum + ext;
			
			//6. 파일을 업로드 할 실질적인 위치 (물리경로) 찾기
			String savePath = session.getServletContext().getRealPath("/resources/uploadFiles/");
			
			try {
			// 7. 물리 경로 + 변경이름으로 파일 생성 및 업로드
				upfile.transferTo(new File(savePath+changeName));
				
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
			return changeName;
		}
		
		
}
