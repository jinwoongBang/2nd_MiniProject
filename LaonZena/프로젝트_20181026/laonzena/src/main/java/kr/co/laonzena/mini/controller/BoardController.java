//package kr.co.laonzena.mini.controller;
//
//import java.io.File;
//import java.util.List;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.ResponseBody;
//import org.springframework.web.multipart.MultipartFile;
//import org.springframework.web.servlet.view.UrlBasedViewResolver;
//
//import kr.co.laonzena.mini.service.BoardService;
//import kr.co.laonzena.repository.domain.Board;
//import kr.co.laonzena.repository.domain.Comment;
//
//@Controller
//@RequestMapping("/mini/review")
//public class BoardController {
//	
//	@Autowired
//	private BoardService service;
//	
//	@RequestMapping("/writeForm.do")
//	public void writeForm() throws Exception {
//	}
//	
//	@RequestMapping("/write.do")
//	public String write(Board board) throws Exception {
//		service.write(board);
//		return UrlBasedViewResolver.REDIRECT_URL_PREFIX + "list.do";
//	}
//	
//	
//	
//	
//	
//	@RequestMapping("/updateForm.do")
//	public void updateForm(int no, Model model) throws Exception {
//		model.addAttribute("board", service.updateForm(no));
//	}
//	
//	/*
//	public ModelAndView updateForm(int no) throws Exception {
//		ModelAndView mav = new ModelAndView("board/updateForm");
//		mav.addObject("board", service.updateForm(no));
//		return mav;
//	}
//	*/
//	
//	@RequestMapping("/update.do")
//	public String update(Board board) throws Exception {
//		service.update(board);
//		return UrlBasedViewResolver.REDIRECT_URL_PREFIX + "list.do";
//	}
//	
//	@RequestMapping("/list.do")
//	public void list(Model model) throws Exception {
//		model.addAttribute("list", service.list());
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
//}
//
//
//
//
//
//
//
