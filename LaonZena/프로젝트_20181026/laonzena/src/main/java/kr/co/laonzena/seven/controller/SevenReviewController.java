package kr.co.laonzena.seven.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
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
}
