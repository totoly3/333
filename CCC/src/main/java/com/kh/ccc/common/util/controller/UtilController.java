package com.kh.ccc.common.util.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.kh.ccc.common.util.model.service.UtilService;

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

}
