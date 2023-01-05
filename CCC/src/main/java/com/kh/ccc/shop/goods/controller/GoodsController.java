package com.kh.ccc.shop.goods.controller;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
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
		System.out.println(upfile.getOriginalFilename()); //파일을 업로드하지 않고 호출했을 시 "" 처리가 된다.
		if(!upfile.getOriginalFilename().equals("")) { //파일 업로드가 되었다면 파일명 수정 후 서버로 업로드 //짱구.jpg -> 20221202113413344555.jpg
			
			//1.원본파일명 뽑기
			String originName = upfile.getOriginalFilename();
			
			//2.시간 형식을 문자열로 뽑기
			String currentTime = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
			
			//3.뒤에 붙일 랜덤값 뽑기
			int ranNum = (int)(Math.random()*9000 + 10000);//5자리 랜덤값
					
			//4.원본 파일명으로부터 확장자명 뽑아오기
			String ext = originName.substring(originName.lastIndexOf("."));
					
			//5. 뽑아놓은 값 전부 붙여서 파일명 만들기
			String changeName = currentTime + ranNum + ext;
			
			//6. 업로드 하고자하는 실제 위치 경로 지정해주기
			String savePath = session.getServletContext().getRealPath("/resources/uploadFiles/");
			
			//7. 경로와 수정 파일명 합쳐서 파일을 업로드 해주기
			try {
				upfile.transferTo(new File(savePath+changeName));
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
			
			
			
			
			//아래에서 모듈화 시킨 saveFile 메소드 활용
			String changeName = saveFile(upfile,session);
			
			//8. 원본명, 서버에 업로드한 경로를 Board 객체에 담아주기
			b.setOriginName(upfile.getOriginalFilename());
			b.setChangeName("resources/uploadfiles/+changeName");
		}
		
		
		//만약 첨부파일이 없다면 - 작성자, 내용, 제목
		//첨부파일이 있다면 - 작성자, 제목, 내용, 원본이름, 경로, 저장경로
		int result = boardService.insertBoard(b);
		
		if(result>0) { //성공시 - 게시판 리스트 띄워주기 (list.bo 재요청)
			
			session.setAttribute("alertMsg", "게시글이 등록되었습니다.");
			mv.setViewName("redirect:/list.bo");
		}else { //실패 - 에러페이지 포워딩
			mv.addObject("errorMsg","게시글 등록 실패").setViewName("common/errorPage");
		}
		
		return mv;
	}
	

}
