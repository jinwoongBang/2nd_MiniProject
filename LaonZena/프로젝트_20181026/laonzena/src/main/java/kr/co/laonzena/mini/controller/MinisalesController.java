package kr.co.laonzena.mini.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/mini/event")
public class MinisalesController {
	
	@RequestMapping("/list.do")
	public void reviewList() {
		System.out.println("reviewList() invoked");
	}
}
