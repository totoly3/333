package com.kh.ccc.board.allTimeBoard.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.ccc.board.allTimeBoard.model.service.AlltimeBoardService;
import com.kh.ccc.common.model.vo.PageInfo;

@Controller
public class AllTimeBoardController {

	@Autowired
	private AlltimeBoardService AlltimeBoardService;
	
	//역대수상작 리스트로 이동 ..! 
	@RequestMapping("list.alltimech")
	public ModelAndView allTimeBoard(PageInfo pi,ModelAndView mv){

		ArrayList<Character> altimelist = AlltimeBoardService.allTimeSelectList(pi);
	
		mv.addObject("altimelist", altimelist);
		mv.setViewName("board/allTimeBoard/AlltimeBoardListView");
		
		
		return mv;
		
	}
}
