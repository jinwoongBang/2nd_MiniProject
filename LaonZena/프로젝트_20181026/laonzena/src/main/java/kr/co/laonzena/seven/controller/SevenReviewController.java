package kr.co.laonzena.seven.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import kr.co.laonzena.repository.domain.Board;
import kr.co.laonzena.seven.service.SevenReviewService;

@Controller
@RequestMapping("/seven/review")
public class SevenReviewController {
	@Autowired
	private SevenReviewService service;
	
	@RequestMapping("/list.do")
	public ModelAndView list() {
		ModelAndView mav = new ModelAndView("seven/review/list");
		List<Board> list1 = service.list();
		System.out.println(list1.get(0));
		mav.addObject("list", service.list());
		return mav;
	}
	
	@RequestMapping("/write.do")
	public void insertBoard(Board board) {
		System.out.println("ajax 호출이요`~~~~~~~~~~~~~~~~~~~~~~~~~");
		service.insertBoard(board);
	}
	
	@RequestMapping("/writeas.do")
	public String insertBoard(Board board,List<MultipartFile> attach) throws Exception {
		String fileName="";
		System.out.println("내용 :" + board.getContent());
		System.out.println("아이디 :" +board.getWriter());
		System.out.println("카테고리 :"+board.getCategory());
		System.out.println("프로덕트 :"+board.getProduct());
		for(MultipartFile file : attach) {
			if(file.isEmpty()==true) continue; 
			System.out.println("제목 : " + board.getTitle());
			System.out.println("올린 파일 이름 :" + file.getOriginalFilename());
			file.transferTo(new File("C:/app/tomcat-work/wtpwebapps/laonzena/upload",file.getOriginalFilename()));		
			fileName += file.getOriginalFilename();
		}
		board.setSerName(fileName);
		board.setSerPath("/upload");
		
		service.insertBoard(board);
		
		return "redirect:list.do";
	}
	
	@RequestMapping("/detail.do")
	public ModelAndView detail(int no) {
		service.viewCnt(no);
		ModelAndView mav = new ModelAndView("seven/review/detail");
		mav.addObject("board", service.detail(no));
		return mav;
	}
}
