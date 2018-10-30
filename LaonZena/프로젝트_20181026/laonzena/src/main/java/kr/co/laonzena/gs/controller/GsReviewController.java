package kr.co.laonzena.gs.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/gs/review")
public class GsReviewController {
	
	@RequestMapping("/list.do")
	public void reviewList() {
		System.out.println("reviewList() invoked");
	}
	
}
