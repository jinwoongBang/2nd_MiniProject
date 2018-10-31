package kr.co.laonzena.seven.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.laonzena.seven.service.SevenProductService;

@Controller
@RequestMapping("/seven/product")
public class SevenProductController {
	@Autowired
	private SevenProductService service;
	
	
	@RequestMapping("/productlist.do")
	public void prList() {
		service.productList();
	}
}
