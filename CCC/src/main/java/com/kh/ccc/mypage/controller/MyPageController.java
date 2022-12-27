package com.kh.ccc.mypage.controller;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.ccc.board.charBoard.model.vo.CharAttach;
import com.kh.ccc.member.model.vo.Member;
import com.kh.ccc.mypage.model.service.MyPageService;
import com.kh.ccc.mypage.model.vo.MyCharacter;
import com.kh.ccc.mypage.model.vo.MyCharacterAttach;

@Controller
public class MyPageController{

		@Autowired
		private MyPageService mypageService;
	 
		
				
		//마이페이지 조회
		@RequestMapping("mypage.me")
		public String myPage() {
			return "mypage/mypage";
		}
		
		
		//마이페이지 내정보 조회
		@RequestMapping("profileEnroll.me")
		public String profile() {
		 return "mypage/profile";
		}
		
		
		//내 캐릭터 영역
		//사용자번호를 가지고 내캐릭터 목록조회
		@RequestMapping("list.mychar")
		public String selectMychaList(HttpSession session,Model model) {
			
		 //>>사용자번호
		 Member loginUser=(Member)session.getAttribute("loginUser");
		 int mNo=loginUser.getmNo();
		 System.out.println("목록조회컨트롤러 사용자번호 넘?"+mNo); 
		
	     //~조회
		 ArrayList<MyCharacter> mchalist=mypageService.selectchaList(mNo);
		 
		 System.out.println("목록조회 컨트롤러 리스트 돌?"+mchalist);
		 
		 //<<리스트
		 model.addAttribute("mchalist",mchalist);
			
		 return "mypage/myCharList";
			
		}
		
		
		//마이캐릭터 업로드폼으로 이동
		@RequestMapping("mychar3.my")
		public String myCharpage3() {
			return "mypage/myCharEnrollForm";
		}
			
		
		//다중첨부파일 입력
		@RequestMapping("insert.mychar")
		public ModelAndView mycharInsert(MyCharacter cha,ModelAndView mv, @RequestParam(value="multifile", required=false) List<MultipartFile> upfileList,HttpSession session) {
	    
			Member loginUser = (Member) session.getAttribute("loginUser");
				
			ArrayList<MyCharacterAttach> mcalist = new ArrayList<>(); //파일 ArrayList
			
				//>>가져가야할 것?
				//객체와 리스트 넘겨줌(글과 파일리스트)
	
				//파일처리과정
				for (int i = 0; i<upfileList.size(); i++) {
					if (!upfileList.get(i).getOriginalFilename().equals("")) { //만약 올라오는 파일이 있다면
						
						System.out.println("파일리스트 원본명 출력"+upfileList.get(i).getOriginalFilename());
						
						String changeName=saveFile(upfileList.get(i), session);  //수정명 모듈화 메소드로 구해줌
						//System.out.println("3시 changeName~~~!!!"+changeName);
						
						//파일객체
						MyCharacterAttach mca=new MyCharacterAttach();
					
						mca.setOriginName(upfileList.get(i).getOriginalFilename()); //원본명
						mca.setChangeName("resources/myPage/myChar/"+changeName); //파일경로=실제경로+수정
						
						mcalist.add(mca); //리스트에 담아서 가져가준다.
				      }
				  }
			
				cha.setmNo(loginUser.getmNo()); 
				
				//System.out.println("cha:"+cha);
				//System.out.println("회원번호"+cha.getmNo());
				
				//System.out.println(mcalist+"확인1시");
				
				//~게시물과 파일리스트를 가지고 요청처리(INSERT)
				int result=mypageService.mycharInsert(cha,mcalist);
				
				if (result>0) {
					
					session.setAttribute("alsertMsg", "내 캐릭터 등록완료");
					mv.setViewName("mypage/myCharDetail"); //내캐릭터 페이지로 보내줌
					
				} else {
					mv.addObject("errorMsg","문의글 등록실패").setViewName("common/errorPage");
				}
			
			 return mv;
		}
		
		
		//상세보기(번호 넘겨주는것 미완)
		//목록에서 특정캐릭터를 누르면 캐릭터번호를 가지고 조회수 증가후에 
		//게시글 정보와 파일정보ArrayList를 가져와준다.
		//임의로 캐릭터번호 15 부여
		@RequestMapping("chardetail.my")
		public ModelAndView detailMyChar(@RequestParam(value="cNo") int cNo,ModelAndView mv){
			
				//System.out.println("캐릭터 번호 넘???"+cNo);
				//int count=mypageService.increaseCount(cNo);
			
				//게시글조회
				MyCharacter cha=mypageService.selecectMyChar(cNo); 
			    //System.out.println("게시글  돌?"+cha);
				
			
				//게시글 파일조회
				ArrayList<MyCharacterAttach> mchalist=mypageService.selectChaList(cNo);
				
				MyCharacterAttach ml = new MyCharacterAttach();
				
				ml.setOriginName(mchalist.get(0).getOriginName());
				
				//System.out.println("111"+ml);
				//System.out.println("파일리스트 돌아오니?"+mchalist);
				
				mv.addObject("cha",cha).addObject("mchalist", mchalist).setViewName("mypage/myCharDetail");
		
			return mv;
		}
		
		
		//임의로 15넘겨줌(미완)
		//수정폼이동 (SELECT) 
		@RequestMapping("updateForm.my")
		public String updateFormMychar(@RequestParam(value ="cNo")int cNo, Model model) {
			
			//>>
			//System.out.println("수정폼 캐릭터번호 넘?"+cNo);
			//임의로 넣어줌
			//System.out.println(cNo);
			
			//~게시글,파일리스트 SELECT
			MyCharacter cha=mypageService.selecectMyChar(cNo); 
			
			ArrayList<MyCharacterAttach> mchalist=mypageService.selectChaList(cNo);
			
			
			//System.out.println("게시글수정폼돌?"+cha);
			//System.out.println("수정폼돌?"+mchalist);
			
			
			//<<
			model.addAttribute("cha", cha);
			model.addAttribute("mchalist", mchalist);
			
			
			return "mypage/myCharUpdateForm" ;
			
		}
		
		
		//실제수정과정
		@RequestMapping("update.my")
		public ModelAndView updateMyChar(MyCharacter cha,ArrayList<MultipartFile> upfile,
				                         HttpSession session,ModelAndView mv) {
			
			System.out.println("컨트롤러 캐릭터객체 넘?"+cha);
				
			//해당 캐릭터의 의 파일리스트 조회	
			int cNo=cha.getcNo();
			System.out.println("실제수정cNo"+cNo);
			
			//~해당 게시글의 파일리스트
			ArrayList<MyCharacterAttach> mchalist=mypageService.selectChaList(cNo);
			System.out.println("실제수정 기존파일리스트"+mchalist);
			
			System.out.println("실제수정 새로운 수정파일"+upfile);
			
			//수정된 파일리스트
			ArrayList<MyCharacterAttach> newmchalist=new ArrayList<>();
				
				
			//새첨부파일이 있다면 
			if(!upfile.get(0).getOriginalFilename().equals("")){
				
				//기존첨부파일 삭제해줌
				for (int i = 0; i < mchalist.size(); i++) {
					if(mchalist.get(i).getOriginName() != null) {
						new File(session.getServletContext().getRealPath(mchalist.get(i).getChangeName())).delete();
					}
				}
			
			
				//새첨부파일이 올라온 수만큼 파일객체생성후에 list에 넣어주기
				for (int i = 0; i < upfile.size(); i++) {
					
					//담아줄 파일객체 생성
					MyCharacterAttach mca=new MyCharacterAttach();
					//System.out.println("파일번호?"+mCaNo);
				   
					//수정파일명 구해줌
					String changeName = saveFile(upfile.get(i),session);
					//System.out.println("수정파일명??"+changeName);
				   
					//참조캐릭터번호,원본파일명,체인지파일명
					mca.setcNo(cNo);
					mca.setOriginName(upfile.get(i).getOriginalFilename());
					mca.setChangeName(changeName);
					//level 1번 : 캐릭터 게시판 썸네일 / 이후 카운트되는 level(2~4)은 sql에서 해당 게시글의 첨부파일 번호를 나타낸다 (파일번호와 다름)
				   
					newmchalist.add(mca);
				}
			
			}
			
			//~요청처리
			int result=mypageService.updateMyChar(cha,newmchalist);
			
			if (result !=0) {
				session.setAttribute("alertMsg", "게시글 수정성공");
				mv.setViewName("redirect:/chardetail.my?cNo="+cNo); 
				
			} else {
				mv.addObject("errorMsg","게시글 수정에 실패했습니다").setViewName("common/errorPage");
			}
			
			//객체를 넣어줘서 update	
			return mv;
		}
		
		
		//삭제
		@RequestMapping("delete.my")
		public String delteMyChar(@RequestParam(value ="cNo")int cNo,HttpSession session,Model model) {
		
			//~해당 글의 첨부파일 리스트를 가져와	
			ArrayList<MyCharacterAttach> mchalist=mypageService.selectChaList(cNo);
			
			//게시글 번호의 글과 첨부파일을 삭제하는 메소드
			int result=mypageService.delteMyChar(cNo);
				
			if(result != 0) {
		        for(int i=0; i<mchalist.size(); i++) {
		            if(!mchalist.get(i).equals("")) {
		                String realPath = session.getServletContext().getRealPath(mchalist.get(i).getChangeName());
		                new File(realPath).delete();
		            }
		        }
		        session.setAttribute("alertMsg", "게시글 삭제에 성공했습니다!");
		    }
		    else {
		        model.addAttribute("errorMsg", "게시글 삭제에 실패했습니다.");
		        return "common/errorPage";
		    }
				
			 return "mypage/mypage";
			
		}
		
		
		
		
		// 현재 넘어온 첨부파일 그 자체를 서버의 폴더에 저장시키는 메소드 (모듈)
		public String saveFile(MultipartFile upfile, HttpSession session) {
			// 1. 원본파일명 뽑기
			String originName = upfile.getOriginalFilename();
			System.out.println(originName);
			// 2. 시간형식을 문자열로 뽑기
			String currentTime = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
			System.out.println(currentTime);
			// 3. 뒤에 붙일 랜덤값 뽑기
	
			int ranNum = (int) (Math.random() * 90000 + 10000); // 5자리 랜덤값
			System.out.println(ranNum);
			// 4. 원본 파일명으로부터 확장자명 뽑아오기
			String ext = originName.substring(originName.lastIndexOf("."));
			System.out.println(ext);
			// 5. 뽑아놓은 값 전부 붙여서 파일명 만들기
			String changeName = currentTime + ranNum + ext;
			System.out.println(changeName);
			// 6. 업로드 하고자 하는 실제 위치 경로 지정해주기 (실제 경로. 8번 changeName이랑 비교)
			String savePath = session.getServletContext().getRealPath("/resources/myPage/myChar/");
			System.out.println(savePath);
			// 7. 경로와 수정파일명 합쳐서 파일을 업로드해주기
			try {
				upfile.transferTo(new File(savePath + changeName));
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
			return changeName;
		}
		
	
    

}
