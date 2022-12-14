package com.kh.ccc.board.freeboard.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.ccc.board.freeboard.model.service.FrBoardService;
import com.kh.ccc.board.freeboard.model.vo.FrBoard;
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
		//		
			PageInfo pi=Pagenation.getPageinfo(listCount, currentPage, pageLimit, boardLimit);
			
			//아래는 게시글 조회 
			ArrayList<FrBoard> flist = FrBoardService.selectList(pi);
			
			if(!flist.isEmpty()) {
				
				mv.addObject("flist",flist);
				mv.addObject("pi",pi);  //페이징바 처리해줄 
				
				mv.setViewName("freeBoard/freeBoardListView");
			}else {
				mv.addObject("alertMsg","비어있으").setViewName("common/errorPage");
	
			}
			return mv;
			
			
						
			
		}
	
	
}
