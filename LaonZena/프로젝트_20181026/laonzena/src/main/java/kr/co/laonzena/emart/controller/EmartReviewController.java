package kr.co.laonzena.emart.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.view.UrlBasedViewResolver;

import kr.co.laonzena.emart.service.EmartReviewService;
import kr.co.laonzena.repository.domain.Board;
import kr.co.laonzena.repository.domain.Comment;


@Controller
@RequestMapping("/emart")
public class EmartReviewController {
	
	@Autowired
	private EmartReviewService service;
		
	@RequestMapping("/write.do")
	public String write(Board board) throws Exception {		
//		mapper.insertBoard(board);
		service.write(board);
//		return "redirect:list.do";
		return UrlBasedViewResolver.REDIRECT_URL_PREFIX + "list.do";	// 이렇게도 쓸 수 있다.
	}
	
	@RequestMapping("/writeForm.do")
	public void writeForm() {
		
	}

	@RequestMapping("/updateForm.do")
	public void updateForm(int no, Model model) throws Exception {
		model.addAttribute("board", service.updateForm(no));
	}

	@RequestMapping("/update/sdsds.do")
	public String update(Board board) throws Exception {	
		service.update(board);
		return UrlBasedViewResolver.REDIRECT_URL_PREFIX + "list.do";
	}

	@RequestMapping("/list.do")
	public void list(@RequestParam(value="pageNo", defaultValue="1") int pageNo, Model model) throws Exception {		
		model.addAttribute("list", service.list());
	}

	@RequestMapping("/detail.do")
	public void detail(int no, Model model) throws Exception {
		model.addAttribute("board", service.detail(no));		 
	}
	
	@RequestMapping("/delete.do")
	public String delete(int no) throws Exception {
		service.delete(no);
		return UrlBasedViewResolver.REDIRECT_URL_PREFIX + "list.do";
	}

	@RequestMapping("/commentList.do")
	@ResponseBody
	public List<Comment> commentList(int no) throws Exception {
		return service.commentList(no);
	}
}