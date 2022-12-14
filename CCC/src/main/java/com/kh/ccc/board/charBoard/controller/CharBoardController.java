package com.kh.ccc.board.charBoard.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.ccc.board.charBoard.model.service.CharBoardService;
import com.kh.ccc.board.charBoard.model.vo.CharBoard;
import com.kh.ccc.common.model.vo.PageInfo;
import com.kh.ccc.common.template.Pagenation;

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

}
