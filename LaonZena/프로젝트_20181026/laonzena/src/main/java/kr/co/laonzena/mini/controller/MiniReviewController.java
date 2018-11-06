package kr.co.laonzena.mini.controller;

import java.io.File;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.UrlBasedViewResolver;

import kr.co.laonzena.mini.service.MiniReviewService;
import kr.co.laonzena.repository.domain.Board;

@Controller
@RequestMapping("/mini/review")
public class MiniReviewController {

	@Autowired
	private MiniReviewService service;

	
	@RequestMapping("/list.do")
	public ModelAndView list() {
		ModelAndView mav = new ModelAndView("mini/review/list");
		List<Board> list1 = service.list();
		System.out.println(list1.get(0));
		mav.addObject("list", service.list());
		return mav;
	}
	
	@RequestMapping("/write.do")
	public void insertBoard(Board board) {
		System.out.println("호출ㄹㄹㄹㄹㄹㄹ");
		service.insertBoard(board);
	}
	
	@RequestMapping("/writes.do")
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
			file.transferTo(new File("D:/app/tomcat-work/wtpwebapps/laonzena/upload",file.getOriginalFilename()));		
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
		ModelAndView mav = new ModelAndView("mini/review/detail");
		mav.addObject("board", service.detail(no));
		return mav;
	}
	
	@RequestMapping("/delete.do")
	public String delete(int no) throws Exception {
		service.deleteBoard(no);
		return UrlBasedViewResolver.REDIRECT_URL_PREFIX + "list.do";
	}
	

}

