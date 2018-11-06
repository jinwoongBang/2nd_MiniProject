package kr.co.laonzena.emart.controller;

import java.io.File;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.UrlBasedViewResolver;

import kr.co.laonzena.emart.service.EmartReviewService;
import kr.co.laonzena.repository.domain.Board;


@Controller
@RequestMapping("/emart/review")
public class EmartReviewController {
	
	@Autowired
	private EmartReviewService service;
	
	@RequestMapping("/list.do")
	public ModelAndView list() {
		ModelAndView mav = new ModelAndView("emart/review/list");
		List<Board> list1 = service.list();
//		System.out.println(list1.get(0));
		mav.addObject("list", service.list());
		return mav;
	}
	
	@RequestMapping("/write.do")
	public void insertBoard(Board board) {
		System.out.println("ajax 호출이요`~~~~~~~~~~~~~~~~~~~~~~~~~");
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
		ModelAndView mav = new ModelAndView("emart/review/detail");
		mav.addObject("board", service.detail(no));
		return mav;
	}
	
	@RequestMapping("/delete.do")
	public String delete(int no) throws Exception {
		service.deleteBoard(no);
		return UrlBasedViewResolver.REDIRECT_URL_PREFIX + "list.do";
	}

	
//	@Autowired
//	private EmartReviewService service;
//		
//	@RequestMapping("/write.do")
//	public String write(Board board) throws Exception {		
////		mapper.insertBoard(board);
//		service.write(board);
////		return "redirect:list.do";
//		return UrlBasedViewResolver.REDIRECT_URL_PREFIX + "list.do";	// 이렇게도 쓸 수 있다.
//	}
//	
//	@RequestMapping("/writeForm.do")
//	public void writeForm() {
//		
//	}
//
//	@RequestMapping("/updateForm.do")
//	public void updateForm(int no, Model model) throws Exception {
//		model.addAttribute("board", service.updateForm(no));
//	}
//
//	@RequestMapping("/update/sdsds.do")
//	public String update(Board board) throws Exception {	
//		service.update(board);
//		return UrlBasedViewResolver.REDIRECT_URL_PREFIX + "list.do";
//	}
//
//	@RequestMapping("/list.do")
//	public ModelAndView list(Model model) throws Exception {	
//		ModelAndView mav = new ModelAndView("emart/review/list");
//		mav.addObject("list", service.list());
//		return mav;
//	}
//
//	@RequestMapping("/detail.do")
//	public void detail(int no, Model model) throws Exception {
//		model.addAttribute("board", service.detail(no));		 
//	}
//	
//	@RequestMapping("/delete.do")
//	public String delete(int no) throws Exception {
//		service.delete(no);
//		return UrlBasedViewResolver.REDIRECT_URL_PREFIX + "list.do";
//	}
//
//	@RequestMapping("/commentList.do")
//	@ResponseBody
//	public List<Comment> commentList(int no) throws Exception {
//		return service.commentList(no);
//	}
}