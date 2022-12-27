package com.kh.ccc.mypage.model.service;

import java.util.ArrayList;

import com.kh.ccc.mypage.model.vo.MyCharacter;
import com.kh.ccc.mypage.model.vo.MyCharacterAttach;

public interface MyPageService {

	
	//마이캐릭터 목록조회
	ArrayList<MyCharacter> selectchaList(int mNo);
	
	//마이캐릭터 입력
	int mycharInsert(MyCharacter cha, ArrayList<MyCharacterAttach> mcalist);

	//마이캐릭터 상세보기 조회수 증가
    //int increaseCount(int cNo);

	//마이캐릭터 상세보기 글 조회
	MyCharacter selecectMyChar(int cNo);

	//마이캐릭터 상세보기 이미지리스트 조회
	ArrayList<MyCharacterAttach> selectChaList(int cNo);

	//마이캐릭터 실제업데이트
	int updateMyChar(MyCharacter cha, ArrayList<MyCharacterAttach> newmchalist);

	//마이캐릭터 삭제
	int delteMyChar(int cNo);

	

	
	

	
}
