package com.kh.ccc.board.charBoard.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.kh.ccc.board.charBoard.model.service.CharBoardService;
import com.kh.ccc.board.charBoard.model.vo.CharAttach;
import com.kh.ccc.board.charBoard.model.vo.CharBoard;
import com.kh.ccc.board.charBoard.model.vo.CharReply;
import com.kh.ccc.common.model.vo.PageInfo;
import com.kh.ccc.common.template.Pagenation;
//악성 글 지우기 
@Controller
public class CharBoardController {

	@Autowired
	private CharBoardService boardService;
	
	//캐릭터 게시판 view로 이동
	@RequestMapping("list.ch")
	public String selectList(@RequestParam(value="currentPage",defaultValue = "1") int currentPage
							,Model model) {
		
		//캐릭터 게시판 총 게시글 수 가져오기
		int listCount = boardService.selectListCount();
		int pageLimit = 10; //하단에 보여질 페이징바의 최대 개수
		int boardLimit = 6; //한 페이지에 보여질 게시글의 개수
		
		PageInfo pi = Pagenation.getPageinfo(listCount, currentPage, pageLimit, boardLimit);
		
		//게시글 리스트 조회
		ArrayList<CharBoard> list = boardService.selectList(pi);

		model.addAttribute("list", list);
		model.addAttribute("pi", pi);
		
		return "board/charBoard/charBoardListView";
	}
	
	//캐릭터 게시판 글 등록 view로 이동
	@GetMapping("insert.ch")
	public String insertBoard() {
		return "board/charBoard/charBoardEnrollForm";
	}
	
	//캐릭터 게시판 글 등록
	@PostMapping("insert.ch")
	public ModelAndView insertCharBoard(CharBoard cb,
										ArrayList<MultipartFile> upfile,
										ModelAndView mv,
										HttpSession session) {
	
		//첨부파일이 여러개 넘어올 수 있기 때문에 ArrayList에 담아주자
		ArrayList<CharAttach> list = new ArrayList<>();
		
		for(int i=0; i<upfile.size(); i++) {	
			//만약 첨부파일이 있다면 (파일명이 빈 문자열이 아니라면)
			if(!upfile.get(i).getOriginalFilename().equals("")) {
				//아래의 saveFile메서드 활용
				String changeName = saveFile(upfile.get(i),session);
				//(아래에 이어)8.원본명,서버에 업로드한 경로를 Board객체에 담아주기
				CharAttach ca = new CharAttach();
				ca.setOriginName(upfile.get(i).getOriginalFilename());
				ca.setChangeName("resources/charBoardImg/" + changeName);
				ca.setLevel(i+1);
							
				list.add(ca);
			}
		}
		
		int result = boardService.insertCharBoard(cb,list);
		
		if(result > 0) {
			session.setAttribute("alertMsg", "게시글 등록 성공!");
			mv.setViewName("redirect:/list.ch");
		}else {
			mv.addObject("errorMsg", "게시글 등록 실패!").setViewName("common/errorPage");
		}
		return mv;
	}

	//글 등록시 넘어온 첨부파일 자체를 서버의 폴더에 저장시키는 메소드 (모듈)
	public String saveFile(MultipartFile upfile, HttpSession session) {
		
		//1.원본파일명 반환
		String originName = upfile.getOriginalFilename();
		
		//2.시간형식 문자열로 반환
		String currentTime = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
		
		//3.뒤에 붙일 랜덤값 반환
		int ranNum = (int)(Math.random() * 90000 + 10000); //5자리의 랜덤숫자
		
		//4.원본 파일명으로부터 확장자명 반환
		String ext = originName.substring(originName.lastIndexOf("."));
		
		//5.위에 반환받은 데이터 모두 붙여 파일명 만들기
		String changeName = currentTime + ranNum + ext;
		
		//6.업로드 하고자 하는 실제 위치 경로 지정해주기 (실제 경로)
		String savePath = session.getServletContext().getRealPath("/resources/charBoardImg/");
		
		//7.경로와 수정파일명 합쳐서 파일을 업로드해주기
		try {
			upfile.transferTo(new File(savePath + changeName));
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return changeName;
	}
	
	//게시글 상세보기
	@RequestMapping("detail.ch")
	public ModelAndView detailBoard(@RequestParam(value="bno") int bno,
							ModelAndView mv) {
		
		//1.게시글 조회수 증가
		int result = boardService.increseCount(bno);
		
		//2.조회수 증가가 이루어지면 해당 게시글의 정보 조회
		if(result != 0) {
			CharBoard cb = boardService.selectBoard(bno);
			ArrayList<CharAttach> caList = boardService.selectAttach(bno);
			
			mv.addObject("cb", cb).addObject("caList", caList).setViewName("board/charBoard/charBoardDetailView");
		}else {
			mv.addObject("errorMsg", "게시글을 조회할 수 없습니다.").setViewName("common/errorPage");
		}
		
		return mv;
	}
	
	//게시글 수정페이지로 포워딩
	@RequestMapping("updateForm.ch")
	public String updateForm(Model model
							,int bno) {
		
		CharBoard cb = boardService.selectBoard(bno);
		ArrayList<CharAttach> caList = boardService.selectAttach(bno);
		
		model.addAttribute("cb", cb);
		model.addAttribute("caList", caList);
		
		return "board/charBoard/charBoardUpdateForm";
	}
	
	//게시글 수정
	@RequestMapping("update.ch")
	public ModelAndView updateBoard(CharBoard cb
							 ,ArrayList<MultipartFile> upfile
							 ,HttpSession session
							 ,ModelAndView mv) {
		
		//게시글 번호를 이용해 해당 게시글의 파일 정보를 가져온다
		ArrayList<CharAttach> caList = boardService.selectAttach(cb.getBoardNo());
		
		//만약 새로운 첨부파일이 하나라도 있다면
		if(!upfile.get(0).getOriginalFilename().equals("")) {
			//기존 첨부파일 다 지우기
			for(int i=0; i<caList.size(); i++) {
				if(caList.get(i).getOriginName() != null) {
					new File(session.getServletContext().getRealPath(caList.get(i).getChangeName())).delete();
				}
			}
			
			for(int i=0; i<upfile.size(); i++) {
				if(!upfile.get(i).getOriginalFilename().equals("")) {
					String changeName = saveFile(upfile.get(i),session);
					caList.get(i).setOriginName(upfile.get(i).getOriginalFilename());
					caList.get(i).setChangeName("resources/charBoardImg/" + changeName);
					caList.get(i).setLevel(i+1);
				}
			}	
		}
		
		System.out.println("여기는 controller! caList : "+caList);
		
		//수정할 게시글 내용과 첨부파일 목록을 보내자
		int result = boardService.updateBoard(cb,caList);
		
		if(result != 0) {
			session.setAttribute("alertMsg", "게시글 수정 성공!");
			mv.setViewName("redirect:/detail.ch?bno=" + cb.getBoardNo());
		}else {
			mv.addObject("errorMsg", "게시글 수정에 실패했습니다.").setViewName("common/errorPage");
		}
		
//		//새로운 첨부파일이 있다면
//		if(!upfile.getOriginalFilename().equals("")) {
//			//기존 첨부파일이 있는경우 삭제
//			if(cb.getOriginName() != null) {
//				new File(session.getServletContext().getRealPath(cb.getChangeName())).delete();
//			}
//			//새로운 첨부파일 등록
//			String changeName = saveFile(upfile,session);
//			cb.setOriginName(upfile.getOriginalFilename());
//			cb.setChangeName("resources/charBoardImg/" + changeName);
//		}
//		
//		int result = boardService.updateBoard(cb);
//		
//		if(result != 0) {
//			session.setAttribute("alertMsg", "게시글 수정 성공!");
//			mv.setViewName("redirect:/detail.ch?bno=" + cb.getBoardNo());
//		}else {
//			mv.addObject("errorMsg", "게시글 수정에 실패했습니다.").setViewName("common/errorPage");
//		}
//		
		return mv;
	}
	
	//게시글 삭제
	@RequestMapping("delete.ch")
	public String deleteBoard(int bno
							 ,String filePath
							 ,HttpSession session
							 ,Model model) {
		
		int result = boardService.deleteBoard(bno);
		
		if(result != 0) {
			
			if(!filePath.equals("")) {
				String realPath = session.getServletContext().getRealPath(filePath);
				new File(realPath).delete();
			}
			session.setAttribute("alertMsg", "게시글 삭제 성공!");
			
		}else {
			model.addAttribute("errorMsg", "게시글 삭제에 실패했습니다.");
			return "common/errorPage";
		}
		
		return "redirect:/list.ch";
	}
	
	//댓글 등록
	@ResponseBody
	@RequestMapping(value="insertReply.ch",produces="text/html; charset=UTF-8")
	public String insertReply(CharReply cr) {
		
		int result = boardService.insertReply(cr);
		
		return (result != 0) ? "NNNNY" : "NNNNN";
	}
	
	//댓글 리스트 조회
	@ResponseBody
	@RequestMapping(value="selectRlist.ch",produces="application/json; charset=UTF-8")
	public String selectReplyList(int boardNo) {
		
		ArrayList<CharReply> list = boardService.selectReplyList(boardNo);
			
		return new Gson().toJson(list);
	}
	
	//댓글 수정
	@ResponseBody
	@RequestMapping(value="updateReply.ch",produces="text/html; charset=UTF-8")
	public String updateReply(CharReply cr) {
		
		int result = boardService.updateReply(cr);
		
		return (result != 0) ? "NNNNY" : "NNNNN";
	}
	
	//댓글 등록
	@ResponseBody
	@RequestMapping(value="replyAnswer.ch",produces="text/html; charset=UTF-8")
	public String insertReplyAnswer(CharReply cr, HttpSession session) {
			
		//int reWriter = session.getAttribute("회원번호"); //(ajax에서 넘어옴)
		int number = boardService.maxNum();   //새 댓글 번호 생성, 참조댓글번호(reGroupNo)는 부모댓글번호(reNo)와 같다 (시퀀스가 필요없다)
		
		int reStep = 0, reLevel = 0; 		  //대댓글의 순서와 계층은 0으로 기본 세팅
		int refBno = cr.getRefBno(); 		  //댓글을 단 게시글 번호 (ajax에서 넘어옴)
		
		//어떤 댓글에 댓글을 남긴건지 (ajax에서 넘어옴)
		//처음 작성하는 부모댓글은 이 시점에서는 댓글 번호가 담기지 않는다
		int reNo = cr.getReNo();	 	  	  
		
		//부모댓글번호 -부모 자기 자신은 자신의 번호를 reParentNo로 갖는다
		//위의 maxNum 메소드로 댓글의 번호를 생성하지만 아직 댓글 번호를 넣지 않은 시점이기 때문에
		//댓글의 답글을 작성하는 경우에만 jsp에서 해당 부모 댓글번호를 가져와 reParentNo에 담긴다
		int reParentNo = cr.getReNo();
		
		String reContent = cr.getReContent(); //대댓글의 내용 (ajax에서 넘어옴)
		
		if(reNo != 0) { //댓글의 번호가 있다면 (댓글에 댓글을 다는 경우)
			
			CharReply cr1 = boardService.replySelect(reNo); //읽어온 댓글의 reStep과 re_level을 알기 위해서
		
			//대댓글의 첫 댓글일 때
			if(cr1.getReStep() == 0 && cr1.getReLevel() == 0) {
				cr.setReGroupNo(reNo); 	//대댓글끼리 그룹핑하기 위해 부모댓글의 번호로 참조댓글번호 세팅
				cr.setReParentNo(reNo);	//대댓글의 부모 번호를 세팅
				int maxStep = boardService.maxStep(cr1.getReGroupNo()); //새로운 대댓글을 작성하면 아래로 가도록 하기위해
				cr.setReStep(maxStep);
				cr.setReLevel(cr1.getReLevel() + 1);
			}
			else { //대댓글의 두번째 댓글 부터
				cr.setReGroupNo(cr1.getReGroupNo()); //대댓글끼리 뭉치기위해,부모댓글의 댓글번호로 reGroupNo세팅
				cr.setReParentNo(reNo);	//대댓글의 부모 번호를 세팅
				cr.setReStep(cr1.getReStep()); 		
				//새로운 댓글은 댓글 사이에 끼어야하기 때문에
				//새로 작성된 대댓글의 그룹번호(부모번호)가 같고 reStep(대댓의 순서)이 해당 댓글의 순서보다 크면 그 댓글보다 reStep + 1을 해준다
				boardService.updateStep(cr);
				
				cr.setReGroupNo(cr1.getReGroupNo());
				cr.setReStep(cr1.getReStep() + 1); 	 //부모댓글의 step보다 +1 증가
				cr.setReLevel(cr1.getReLevel() + 1); //부모댓글의 level보다 +1 증가
			}

		}else { //댓글의 번호가 없다면 (부모댓글의 경우)
			cr.setReGroupNo(number);
			cr.setReParentNo(number);//첫 댓글에는 자기 자신의 번호로 부모 번호를 세팅
			cr.setReStep(reStep); 	 //기본 댓글에는 0으로 세팅
			cr.setReLevel(reLevel);  //기본 댓글에는 0으로 세팅
		}
		
		cr.setReContent(reContent); 	//댓글 내용 담기
		cr.setReNo(number);				//새로 생성한 댓글의 번호 담기
		cr.setRefBno(refBno); 			//댓글이 작성된 게시글 번호 담기
		//cr.setReWriter(reWriter); 	//댓글 작성자 (아직 안넣음)
		
		int result = boardService.insertReply(cr);
		
		return (result != 0) ? "NNNNY" : "NNNNN";
	}
	
	//댓글 삭제
	@ResponseBody
	@RequestMapping(value="deleteReply.ch",produces="text/html; charset=UTF-8")
	public String deleteReply(CharReply cr) {
		
		int result = boardService.deleteReply(cr);
		
		return (result != 0) ? "NNNNY" : "NNNNN";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
