package com.kh.ccc.board.charboard.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.kh.ccc.board.charboard.model.service.CharBoardService;

@Controller
public class CharBoardController {
	
	@Autowired
	private CharBoardService boardservice;
	
}
