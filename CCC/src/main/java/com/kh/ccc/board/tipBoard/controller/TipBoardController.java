package com.kh.ccc.board.tipBoard.controller;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.ccc.board.freeboard.model.service.FrBoardService;
import com.kh.ccc.board.freeboard.model.vo.FrBoard;
import com.kh.ccc.board.freeboard.model.vo.FrBoardAttach;
import com.kh.ccc.common.model.vo.PageInfo;
import com.kh.ccc.common.template.Pagenation;

@Controller
public class TipBoardController {

	@Autowired
	private TipBoardService Tip;
	
	//view 페이지 포워딩 
		@RequestMapping("list.tp")
		public ModelAndView selectList(@RequestParam(value="currentPage",defaultValue="1")int currentPage,
													ModelAndView  mv) {
			
				
			int listCount = TipBoardService.selectListCount(); //총 게시글 개수  db에서 조회해오기 .
			
			int pageLimit = 10;	//하단에 페이징바 갯수
			int boardLimit =5; //한페이지에 몇개씩 띄울껀지!
			
			PageInfo pi=Pagenation.getPageinfo(listCount, currentPage, pageLimit, boardLimit);
			
			//아래는 게시글 조회 
			ArrayList<FrBoard> list = TipBoardService.selectList(pi);
			
//			if(flist.isEmpty()) {
//			}else {
//			}
				System.out.println("list:"+list);
				mv.addObject("list", list);
				mv.addObject("pi",pi);  //페이징바 처리해줄 
				
				mv.setViewName("board/tipBoard/tipBoardListView");
//				mv.addObject("alertMsg","비어있으").setViewName("common/errorPage");
//	
			return mv;
		}
		//
		//아래는 게시물 상세보기 
		@RequestMapping("detail.tbo")
		public ModelAndView boardDetailView(int fno,ModelAndView mv,HttpSession session) {
			
			//아래는 조회수 증가 
		int result = TipBoardService.increaseCount(fno);
			
		if(result>0) {
			//아래는 조회 
			ArrayList<TipBoard> fb = TipBoardService.tipboardDetailView(tno);
			
			System.out.println("fb :"+fb);
			
			//아래는 파일만 가져오기 
			TipBoardAttach trba= TipBoardService.tipboardAttDetailView(tno);
			mv.addObject("trba",trba).setViewName("board/tipBoard/tipBoardDetailView"); //한줄작성가능 
			mv.addObject("tb",tb).setViewName("board/tipBoard/tipBoardDetailView"); //한줄작성가능 
			
		}else {
			System.out.println("실패");
			mv.addObject("errorMsg","쉴패").setViewName("common/errorPage");
		}
		
		return mv;
		}
		
		//아래는 글쓰기 누르면 글작성 폼으로 이동 
		@GetMapping("insert.tpom")
		public String insertTipPomBoard() {
			return "board/tipBoard/TipBoardEnrollForm";
		}
		
		
		//아래는 게시글 등록 (사진포함)
				@RequestMapping("insert.trbo")
				public ModelAndView insertFrBoard(ModelAndView mv,FrBoard tb,
						ArrayList<MultipartFile> upfile
						,HttpSession session) {
					System.out.println(tb);
					System.out.println(upfile);
					
					ArrayList<TipBoardAttach> talist = new ArrayList<>();
					
					for(int i=0; i<=1; i++) {
						if (!upfile.get(i).getOriginalFilename().equals("")) {
						
							String changeName = saveFile(upfile.get(i),session);
							
							TipBoardAttach tab= new TipBoardAttach();
							
							tab.setFaOrginName(upfile.get(i).getOriginalFilename());
							tab.setFaChangeName("resources/freeBoardImg/"+changeName);
							talist.add(tab);
							System.out.println("falist:"+talist);
						}
					}
						
				int finalResult=TipBoardService.insertFrBoard(tb,talist);
						
				if(finalResult>0) {
					System.out.println("등록완료");
					session.setAttribute("alertMsg", "게시글 등록 성공!");
					mv.setViewName("redirect:/list.tp");
				}else {
					mv.addObject("errorMsg", "게시글 등록 실패!").setViewName("common/errorPage");
				}
				
				return mv;
			}
		
		// 현재 넘어온 첨부파일 그 자체를 서버의 폴더에 저장시키는 메소드 (모듈)

			public String saveFile(MultipartFile upfile, HttpSession session) {
				// 1. 원본파일명 뽑기
				String originName = upfile.getOriginalFilename();
				// 2. 시간형식을 문자열로 뽑기
				String currentTime = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
				// 3. 뒤에 붙일 랜덤값 뽑기
				int ranNum = (int) (Math.random() * 90000 + 10000); // 5자리 랜덤값
				// 4. 원본 파일명으로부터 확장자명 뽑아오기
				String ext = originName.substring(originName.lastIndexOf("."));
				// 5. 뽑아놓은 값 전부 붙여서 파일명 만들기
				String changeName = currentTime + ranNum + ext;
				// 6. 업로드 하고자 하는 실제 위치 경로 지정해주기 (실제 경로. 8번 changeName이랑 비교)
				String savePath = session.getServletContext().getRealPath("/resources/freeBoardImg/");
				// 7. 경로와 수정파일명 합쳐서 파일을 업로드해주기
				try {
					upfile.transferTo(new File(savePath + changeName));
				} catch (IllegalStateException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}
				return changeName;
			}
		
			
			//아래는 팁 게시판 글 삭제하기 
			@RequestMapping("delete.fbo")
			public ModelAndView tipboardDelete(int tno ,String filePath,ModelAndView mv,HttpSession session) {
				
				int result = TipBoardService.tipboardDelete(tno);
				
				return mv;
				
			}
}
