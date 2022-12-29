package com.kh.ccc.board.allTimeBoard.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.ccc.board.allTimeBoard.model.service.AlltimeBoardService;
import com.kh.ccc.board.charBoard.model.vo.CharAttach;
import com.kh.ccc.board.charBoard.model.vo.Character;

@Controller
public class AllTimeBoardController {

	@Autowired
	private AlltimeBoardService AlltimeBoardService;
	
	//역대수상작 리스트로 이동 ..! 
	@RequestMapping("list.alltimech")
	public ModelAndView allTimeBoard(ModelAndView mv){
		
		// 캐릭터 vo 조회 
		ArrayList<Character> altimelist = AlltimeBoardService.allTimeSelectList();
		System.out.println("altimelist는??"+altimelist);
		
		mv.addObject("altimelist",altimelist);
		
		
		System.out.println("0번 1등"+altimelist.get(0).getChangeName());
		System.out.println("1번 2등"+altimelist.get(1).getChangeName());
		System.out.println("2번 3등"+altimelist.get(2).getChangeName());
		
		//아래는 1등~3등 첨부파일 이미지를 보여주기 위해 캐릭터 어테치 조회
		ArrayList<CharAttach> myAlltimelist = AlltimeBoardService.myAllTimeBoard();
		
		mv.addObject("myAlltimelist",myAlltimelist);
		
		mv.setViewName("board/allTimeBoard/AlltimeBoardListView");
		return mv;
		
	}
}
