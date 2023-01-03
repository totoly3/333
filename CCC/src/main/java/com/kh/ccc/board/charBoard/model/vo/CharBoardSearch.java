package com.kh.ccc.board.charBoard.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class CharBoardSearch {
	
	private String condition; 	//카테고리
	private String keyword;		//검색 키워드
	
}
