package com.kh.ccc.freeboard.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class FreeBoardController {
	
	@RequestMapping("list.fr")
	public ModelAndView selectFrList(ModelAndView mv,HttpSession session) {
		
		mv.setViewName("freeBoard/freeBoardListView");
		
		
		
		return mv;
	}
	
}
