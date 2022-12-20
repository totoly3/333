package com.kh.ccc.board.freeboard.controller;

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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.kh.ccc.board.freeboard.model.service.FrBoardService;
import com.kh.ccc.board.freeboard.model.vo.FrBoard;
import com.kh.ccc.board.freeboard.model.vo.FrBoardAttach;
import com.kh.ccc.board.freeboard.model.vo.FrBoardReply;
import com.kh.ccc.common.model.vo.PageInfo;
import com.kh.ccc.common.template.Pagenation;

@Controller
public class FrBoardController {

	@Autowired
	private FrBoardService FrBoardService;
	
	//view 페이지 포워딩 
		@RequestMapping("list.fr")
		public ModelAndView selectList(@RequestParam(value="currentPage",defaultValue="1")int currentPage,
													ModelAndView  mv) {
			
				
			int listCount = FrBoardService.selectListCount(); //총 게시글 개수  db에서 조회해오기 .
			
			int pageLimit = 10;	//하단에 페이징바 갯수
			int boardLimit =5; //한페이지에 몇개씩 띄울껀지!
			
			PageInfo pi=Pagenation.getPageinfo(listCount, currentPage, pageLimit, boardLimit);
			
			//아래는 게시글 조회 
			ArrayList<FrBoard> list = FrBoardService.selectList(pi);
			
//			if(flist.isEmpty()) {
//			}else {
//			}
				System.out.println("list:"+list);
				mv.addObject("list", list);
				mv.addObject("pi",pi);  //페이징바 처리해줄 
				
				mv.setViewName("board/freeBoard/freeBoardListView");
//				mv.addObject("alertMsg","비어있으").setViewName("common/errorPage");
//	
			return mv;
		}
		//
		//아래는 게시물 상세보기 
		@RequestMapping("detail.fbo")
		public ModelAndView boardDetailView(int fno,ModelAndView mv,HttpSession session) {
			System.out.println("fno"+fno);
			
			//아래는 조회수 증가 
		int result=FrBoardService.increaseCount(fno);
			System.out.println("리저트"+result);
		if(result>0) {
			//아래는 조회 
			ArrayList<FrBoard> fb=FrBoardService.frboardDetailView(fno);
			
			System.out.println("fb :"+fb);
			
			//아래는 파일만 가져오기 
			
			ArrayList<FrBoardAttach> frba= FrBoardService.frboardAttDetailView(fno);
			System.out.println("frba:"+frba);
			
			mv.addObject("frba",frba).setViewName("board/freeBoard/freeBoardDetailView"); //한줄작성가능 
			mv.addObject("fb",fb).setViewName("board/freeBoard/freeBoardDetailView"); //한줄작성가능 
			
		}else {
			System.out.println("실패");
			mv.addObject("errorMsg","쉴패").setViewName("common/errorPage");
		}
		
		return mv;
		}
		
		//아래는 글쓰기 누르면 글작성 폼으로 이동 
		@GetMapping("insert.fpom")
		public String insertFrPomBoard() {
			return "board/freeBoard/frBoardEnrollForm";
		}
		
		
		//아래는 게시글 등록 (사진포함)
				@RequestMapping("insert.frbo")
				public ModelAndView insertFrBoard(ModelAndView mv,FrBoard fb,
						ArrayList<MultipartFile> upfile
						,HttpSession session) {
					System.out.println(fb);
					System.out.println(upfile);
					
					ArrayList<FrBoardAttach> falist = new ArrayList<>();
					
					for(int i=0; i<=1; i++) {
						if (!upfile.get(i).getOriginalFilename().equals("")) {
						
							String changeName = saveFile(upfile.get(i),session);
							
							FrBoardAttach fab= new FrBoardAttach();
							
							fab.setFaOrginName(upfile.get(i).getOriginalFilename());
							fab.setFaChangeName("resources/freeBoardImg/"+changeName);
							
							falist.add(fab);
							System.out.println("falist:"+falist);
						}
					}
					
				if(falist.isEmpty()) { //글만 작성할때
					int result1=FrBoardService.insertFrBoardOnlyWrite(fb);
					
						if(result1>0) {
							System.out.println("등록완료");
							session.setAttribute("alertMsg", "게시글 등록 성공!");
							mv.setViewName("redirect:/list.fr");
						}else {
							mv.addObject("errorMsg", "게시글 등록 실패!").setViewName("common/errorPage");
							}
				}else {//파일두개 등록할때
					int finalResult=FrBoardService.insertFrBoard(fb,falist);
					
						if(finalResult>0) {
							System.out.println("등록완료");
							session.setAttribute("alertMsg", "게시글 등록 성공!");
							mv.setViewName("redirect:/list.fr");
						}else {
							mv.addObject("errorMsg", "게시글 등록 실패!").setViewName("common/errorPage");
						}
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
			//아래는 주말동안한거 
			//아래는 주말동안한거 
			//아래는 주말동안한거 
			//아래는 주말동안한거 
			//아래는 주말동안한거 
			//아래는 주말동안한거 
			
			
			//아래는 지유게시판 글 삭제하기 
			@RequestMapping("delete.frbo")
			public String frboardDelete(int fno, String filePath, ModelAndView mv, HttpSession session) {

				int result = FrBoardService.frboardDelete(fno);
				System.out.println("삭제할떄 fno는 가져오나 " + fno);

				if (result > 0) {
					if (!filePath.equals("")) {
						// 파일이 있는경우 삭제
						// 물리적인 경로 찾기
						String realPath = session.getServletContext().getRealPath(filePath);

						// 해당 경로와 연결시켜 파일객체 생성후 삭제 메소드(해당 파일 삭제)
						new File(realPath).delete();
						session.setAttribute("alertMsg", "삭제성공!");
						mv.setViewName("freeBoard/freeBoardListView");
						}else {
							//파일이 비어있으면
						}
					} else {
						session.setAttribute("alertMsg", "삭제실패!");
						mv.setViewName("common/errorPage");
				}
				return "redirect:/list.fr";
			}
			
			//아래는 수정하기 누르면 폼으로 가는거
			@RequestMapping("updatefm.fbo")
			public ModelAndView updateFrboardForm(int fno,ModelAndView mv) {
			
				//아래는 글번호로 가져온 fb들 
				ArrayList<FrBoard> fb=FrBoardService.frboardDetailView(fno);
				
				//아래는 글번호로 가져온 frba
				ArrayList<FrBoardAttach> frba= FrBoardService.frboardAttDetailView(fno);
				
				mv.addObject("fb",fb);
				mv.addObject("frba",frba);
				mv.setViewName("board/freeBoard/frBoardEnrollForm");
			
				return mv;
			}
			
//			//아래는 수정 폼에서 등록하기 누르면~
//			@RequestMapping("update.frbo")
//			public ModelAndView updateFrboard(MultipartFile upfile,ArrayList<FrBoard> fb,ModelAndView mv,ArrayList<FrBoardAttach> frba,HttpSession session) {
//					//새로운첨부파일이 있는지 없는지 확인 
//				if(!upfile.getOriginalFilename().equals("")) {
//					if(frba.get(0).getFaOrginName() != null) {//기존 첨부파일의 이름이 담겨있는 경우
//						new File(session.getServletContext().getRealPath(frba.get(0).getFaChangeName())).delete();
//					}
//					//새로운 첨부파일 업로드 
//					String changeName = saveFile(upfile,session);//아래에서 작업한 saveFile메소드 사용 
//					
//					
//					//새 데이터 DB에 등록
//					frba.setFaOrginName(upfile.getOriginalFilename());
//					frba.setFaChangeName("resources/board/freeBoard/"+changeName);
//					
//					FrBoardService.updateFrboard(fb,frba);
//				return mv;
//			}
			
			
//			아래는 게시판 detail 뷰 댓글 전체조회 
			@ResponseBody
			@RequestMapping(value="frlist.fbo",produces="application/json; charset=UTF-8")
			public String detailFrBoardReviewSelect(int fno, ModelAndView mv) {
				System.out.println("댓글조회 번호가져오나 fno:"+fno);				
				ArrayList<FrBoardReply> rlist=FrBoardService.detailFrBoardReviewSelect(fno);
			
				return new Gson().toJson(rlist);
			}
			
			
			//아래는 댓글 등록 
			@ResponseBody
			@RequestMapping(value="frInsert.fbo",produces="text/html; charset=UTF-8")
			public String insertFrReply(FrBoardReply refb) {

				System.out.println("refb"+refb);
				int result = FrBoardService.insertFrReply(refb);

				System.out.println("댓글등록 성공했으면1: "+result); 
				return result>0 ? "yes" : "no";
			}
			
	}	
