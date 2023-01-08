package com.kh.ccc.common.util.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.ccc.common.util.model.service.UtilService;
import com.kh.ccc.board.charBoard.model.vo.Character;

@Controller
public class UtilController {
	
	@Autowired
	private UtilService utilService;
	
	@RequestMapping("createFileDummy.do")
	public String createFileDummy(HttpSession session) {
		
		System.out.println("파일 생성 시작");
		
		String originPath = "D:\\spring-w\\git\\CCC\\CCC\\src\\main\\webapp\\resources\\dummy\\origin";
		String changePath = "D:\\spring-w\\git\\CCC\\CCC\\src\\main\\webapp\\resources\\dummy\\change\\";
		File rw = new File(originPath);
		File[] fList = rw.listFiles();
		
//		System.out.println("경로 : "+rw.getPath());
//		System.out.println(fList.length);
		
		if(fList!=null) {
			
			for(File file : fList) {
				
				if(file.isFile()) {
					
					String originName = file.getName();
					System.out.println("변경 전 파일명 : "+originName);
					
					// 파일명 생성
					String currentTime = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
					String ext = originName.substring(originName.lastIndexOf("."));
					int ranNum = (int)(Math.random() * 90000 + 10000);
					String changeName = currentTime+ranNum+ext;
					System.out.println("변경 후 파일명 : "+changeName);
					
					// 파일 이동 및 파일명 변경
					File afterFile = new File(changePath+changeName);
					boolean result = file.renameTo(afterFile);
					if(!result) {
						System.out.println("실패한 파일 : "+afterFile);
					}
					
					// DB에 캐릭터 더미 등록
					
				}
				
			}
		}
		return"";
	}
	
	@RequestMapping(value="worldCupForm.ut")
	public String goWorldCupForm() {
		
		return "board/playground/worldCupForm";
	}
	
	@RequestMapping(value="worldCup.ut")
	public String goWorldCup(HttpSession session, Model model, int no) {
		// 랜덤으로 이미지를 N개 뽑아야 함.
		
		// 하지만 지금은 더미가 없으므로 임의로 데이터만 넣어서 개발
		ArrayList<Character> clist = new ArrayList<>();
		for(int i=0; i<no; i++) {
			Character c = new Character();
			c.setCharNo(i+1);
			c.setCharName("캐릭터 이름 "+(i+1));
			c.setCharContent("캐릭터 설명"+(i+1));
			c.setMemberNo(i+1);
			c.setChangeName("resources/worldCup/img/WC"+(i+1)+".png");
			clist.add(c);
		}
		System.out.println("캐릭터리스트 : "+clist);
		model.addAttribute("clist", clist);
		
		return "board/playground/worldCup";
	}

}
