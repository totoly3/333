package com.kh.ccc.board.allTimeBoard.model.service;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

import com.kh.ccc.common.model.vo.PageInfo;

public interface AlltimeBoardService {
	
	//역대수상작 조회 폼 
	ArrayList<Character> allTimeSelectList(PageInfo pi);

}
