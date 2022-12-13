package com.kh.ccc.freeboard.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.ccc.common.model.vo.PageInfo;
import com.kh.ccc.freeboard.model.service.FrService;
import com.kh.ccc.freeboard.model.vo.FrBoard;



@Controller
public class FreeBoardController {
	
	
	@Autowired
	private FrService FrService;
	
	
	//아래는 자유게시판 리스트 띄워주기 
	@RequestMapping("list.fr")
	public ModelAndView selectFrList(ModelAndView mv,HttpSession session) {
		
		//페이징 처리예정
		int listCount = FrService.selectListCount();
		int pageLimit = 10;	//하단에 페이징바 갯수
		int boardLimit =5; //한페이지에 몇개씩 띄울껀지!
	//		
		
		PageInfo pi=Pagination.getPageinfo(listCount, currentPage, pageLimit, boardLimit);
		
		ArrayList<FrBoard> list = FrService.selectList(pi);
		
		
		
		mv.setViewName("freeBoard/freeBoardListView");
		
		
		
		return mv;
	}
	
}
