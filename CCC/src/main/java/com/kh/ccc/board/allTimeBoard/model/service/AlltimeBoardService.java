package com.kh.ccc.board.allTimeBoard.model.service;

import java.util.ArrayList;
import com.kh.ccc.board.charBoard.model.vo.Character;
import com.kh.ccc.board.charBoard.model.vo.CharAttach;


public interface AlltimeBoardService {
	
	//역대수상작 조회 폼 
	ArrayList<Character> allTimeSelectList();
	
	//첨부파일 이미지 가져오려고 
	ArrayList<CharAttach> myAllTimeBoard();

}
