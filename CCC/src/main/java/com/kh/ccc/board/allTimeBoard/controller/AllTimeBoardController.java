package com.kh.ccc.board.allTimeBoard.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.ccc.board.allTimeBoard.model.service.AlltimeBoardService;
import com.kh.ccc.common.model.vo.PageInfo;
import com.kh.ccc.mypage.model.vo.MyCharacterAttach;

@Controller
public class AllTimeBoardController {

	@Autowired
	private AlltimeBoardService AlltimeBoardService;
	
	//역대수상작 리스트로 이동 ..! 
	@RequestMapping("list.alltimech")
	public ModelAndView allTimeBoard(PageInfo pi,ModelAndView mv){
		
		// 캐릭터 vo 조회 
		ArrayList<Character> altimelist = AlltimeBoardService.allTimeSelectList(pi);
//		altimelist.add(e);
		mv.addObject("altimelist", altimelist);
		
		//아래는 1등~3등 첨부파일 이미지를 보여주기 위해 my캐릭터 어테치 조회
		ArrayList<MyCharacterAttach> myAlltimelist = AlltimeBoardService.myAllTimeBoard();
		
		mv.addObject("myAlltimelist", myAlltimelist);
		
		mv.setViewName("board/allTimeBoard/AlltimeBoardListView");
		return mv;
		
	}
}
