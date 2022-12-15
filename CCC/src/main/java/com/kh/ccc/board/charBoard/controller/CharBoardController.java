package com.kh.ccc.board.charBoard.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.ccc.board.charBoard.model.service.CharBoardService;
import com.kh.ccc.board.charBoard.model.vo.CharAttach;
import com.kh.ccc.board.charBoard.model.vo.CharBoard;
import com.kh.ccc.common.model.vo.PageInfo;
import com.kh.ccc.common.template.Pagenation;
//악성 글 지우기 
@Controller
public class CharBoardController {

	@Autowired
	private CharBoardService boardService;
	
	//캐릭터 게시판 view로 이동
	@RequestMapping("list.ch")
	public String selectList(@RequestParam(value="currentPage",defaultValue = "1") int currentPage
							,Model model) {
		
		//캐릭터 게시판 총 게시글 수 가져오기
		int listCount = boardService.selectListCount();
		int pageLimit = 10; //하단에 보여질 페이징바의 최대 개수
		int boardLimit = 10; //한 페이지에 보여질 게시글의 개수
		
		PageInfo pi = Pagenation.getPageinfo(listCount, currentPage, pageLimit, boardLimit);
		
		//게시글 리스트 조회
		ArrayList<CharBoard> list = boardService.selectList(pi);
		
		model.addAttribute("list", list);
		model.addAttribute("pi", pi);
		
		return "board/charBoard/charBoardListView";
	}
	
	//캐릭터 게시판 글 등록 view로 이동
	@GetMapping("insert.ch")
	public String insertBoard() {
		return "board/charBoard/charBoardEnrollForm";
	}
	
	//캐릭터 게시판 글 등록
	@PostMapping("insert.ch")
	public ModelAndView insertCharBoard(CharBoard cb,
										ArrayList<MultipartFile> upfile,
										ModelAndView mv,
										HttpSession session) {
	
		//첨부파일이 여러개 넘어올 수 있기 때문에 ArrayList에 담아주자
		ArrayList<CharAttach> list = new ArrayList<>();
		
		for(int i=0; i<=3; i++) {	
			//만약 첨부파일이 있다면 (파일명이 빈 문자열이 아니라면)
			if(!upfile.get(i).getOriginalFilename().equals("")) {
				//아래의 saveFile메서드 활용
				String changeName = saveFile(upfile.get(i),session);
				//(아래에 이어)8.원본명,서버에 업로드한 경로를 Board객체에 담아주기
				CharAttach ca = new CharAttach();
				ca.setOriginName(upfile.get(i).getOriginalFilename());
				ca.setChangeName("resources/charBoardImg/" + changeName);
				
				if(i==0) {
					ca.setLevel(1);
				}else {
					ca.setLevel(2);
				}
				
				list.add(ca);
			}
		}
		
		int result = boardService.insertCharBoard(cb,list);
		
		System.out.println(result);
		
		if(result > 0) {
			session.setAttribute("alertMsg", "게시글 등록 성공!");
			mv.setViewName("redirect:/list.ch");
		}else {
			mv.addObject("errorMsg", "게시글 등록 실패!").setViewName("common/errorPage");
		}
		return mv;
	}

	//글 등록시 넘어온 첨부파일 자체를 서버의 폴더에 저장시키는 메소드 (모듈)
	public String saveFile(MultipartFile upfile, HttpSession session) {
		
		//1.원본파일명 반환
		String originName = upfile.getOriginalFilename();
		
		//2.시간형식 문자열로 반환
		String currentTime = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
		
		//3.뒤에 붙일 랜덤값 반환
		int ranNum = (int)(Math.random() * 90000 + 10000); //5자리의 랜덤숫자
		
		//4.원본 파일명으로부터 확장자명 반환
		String ext = originName.substring(originName.lastIndexOf("."));
		
		//5.위에 반환받은 데이터 모두 붙여 파일명 만들기
		String changeName = currentTime + ranNum + ext;
		
		//6.업로드 하고자 하는 실제 위치 경로 지정해주기 (실제 경로)
		String savePath = session.getServletContext().getRealPath("/resources/charBoardImg/");
		
		//7.경로와 수정파일명 합쳐서 파일을 업로드해주기
		try {
			upfile.transferTo(new File(savePath + changeName));
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return changeName;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
