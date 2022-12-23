package com.kh.ccc.admin.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.IndexedColors;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.streaming.SXSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.ccc.admin.model.service.AdminService;
import com.kh.ccc.admin.model.vo.Admin;
import com.kh.ccc.member.model.vo.Member;



@Controller
public class AdminController {
	
		@Autowired
		private AdminService adminService;
	
	
		//회원관리로 전달
		@RequestMapping("mainAdmin.ad")
		public String mainAdmin() {
		
		return "admin/mainAdmin";
		
		}
	
	
		//리스트 조회 + 회원수
		@RequestMapping("member.ad")
		public String memberList(Model model) {
		
		//회원수
		int listCount = adminService.selectListCount();
		
		model.addAttribute("listCount",listCount);
		
		//리스트조회
		ArrayList<Member> mList = adminService.memberList();
		
		model.addAttribute("mList",mList);
		
		return "admin/memberAdmin";
		
		}
	
	
		//엑셀
		@PostMapping("excelDownload.ad")
		public void textExcel(HttpServletResponse response) throws IOException {

		Workbook workbook= new SXSSFWorkbook();
		Sheet sheet = workbook.createSheet("회원리스트");
		int rowNo = 0;
		

		//색상
		CellStyle styleOfBoardFillFontRedBold14 = workbook.createCellStyle();
		styleOfBoardFillFontRedBold14.setFillForegroundColor(IndexedColors.PALE_BLUE.getIndex());
		
		
		int rowIndex = 0;  //헤더 생성
		Row headerRow = sheet.createRow(rowIndex++);
		Cell headerCell1 = headerRow.createCell(0);
		headerCell1.setCellValue("회원번호");	

		headerCell1.setCellStyle(styleOfBoardFillFontRedBold14); //색상
		
		
		Cell headerCell2 = headerRow.createCell(1);
		headerCell2.setCellValue("아이디");
		Cell headerCell3 = headerRow.createCell(2);
		headerCell3.setCellValue("이름");
		Cell headerCell4 = headerRow.createCell(3);
		headerCell4.setCellValue("성별");
		Cell headerCell5 = headerRow.createCell(4);
		headerCell5.setCellValue("회원등급");
		Cell headerCell6 = headerRow.createCell(5);
		headerCell6.setCellValue("회원점수");
			
		//list 돌려주기
		ArrayList<Member> mList = adminService.memberList();
		for (Member m : mList) {
		
		Row bodyRow = sheet.createRow(rowIndex++); //바디 생성
	    Cell bodyCell1 = bodyRow.createCell(0);
	    bodyCell1.setCellValue(m.getmNo());
	    Cell bodyCell2 = bodyRow.createCell(1);
	    bodyCell2.setCellValue(m.getmId());
	    Cell bodyCell3 = bodyRow.createCell(2);
	    bodyCell3.setCellValue(m.getmName());
	    Cell bodyCell4 = bodyRow.createCell(3);
	    bodyCell4.setCellValue(m.getmGender());
	    Cell bodyCell5 = bodyRow.createCell(4);
	    bodyCell5.setCellValue(m.getMgNo());
	    Cell bodyCell6 = bodyRow.createCell(5);
	    bodyCell6.setCellValue(m.getmPoint());
		
		}

	 	response.setContentType("ms-vnd/excel");
        response.setHeader("Content-Disposition", "attachment;filename=CCC_memberList.xlsx");
 
        try {
			workbook.write(response.getOutputStream());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        try {
			workbook.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    
	
		}
		
		
		//관리자리스트 조회 (특수관리자페이지)
		@RequestMapping("adminList.ad")
		public String selectAdmin(Model model) {
			
		ArrayList<Admin> aList = adminService.adminList();
			
		model.addAttribute("aList",aList);	
			
		return "admin/selectAdmin";

		}
		
	
		//관리자 상세조회 (특수관리자페이지)
		@RequestMapping("adminDetail.ad")
		public String detailAdmin(int ano,Model model) {
			
			//System.out.println("번호는:"+ano);
			
			Admin a = adminService.detailAdmin(ano);
			
			model.addAttribute("a",a);	
			
			return "admin/testDetail";

			
		}
		
		
		//일반회원 check회원들 삭제
		@ResponseBody
		@RequestMapping(value="deleteClickMember.ad", produces="application/json;charset=UTF-8")
		public String deleteClick(HttpServletRequest request,ModelMap model) throws Exception {
			
			String[] checkBoxArr = request.getParameterValues("checkBoxArr");
			System.out.println(checkBoxArr);
			

			
			return null;
	
		}
		
		
}
