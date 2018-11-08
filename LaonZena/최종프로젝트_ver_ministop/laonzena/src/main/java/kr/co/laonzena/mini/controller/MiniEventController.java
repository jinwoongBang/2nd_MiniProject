package kr.co.laonzena.mini.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/mini/event")
public class MiniEventController {
	@Autowired
	private MiniEventController service;

	
	@RequestMapping("/1n1.do")
	public ModelAndView event1() {
		ModelAndView mav = new ModelAndView("mini/event/1n1");
		try {
			Document doc = Jsoup.connect("https://www.ministop.co.kr/MiniStopHomePage/page/event/plus1.do").get(); //미니스톱 페이지
			Elements list = doc.select(".event_plus_list > ul > li > a"); //제품 이미지 가격 이름 등 있는 하위 태그 주소/
			List products = new ArrayList();
			for (Element m : list) {
				Elements sList0 = m.select("img");// 이미지
				Elements sList2 = m.select("p");// 이름 , 가격
			
				String image = sList0.get(0).attr("src").replace("..", ""); //.replace("..", "") 를 통해 이미지 앞에 ..을 ""로 바꿔서 넣어줌.
				String price = sList2.get(0).html();
				HashMap<String, String> product = new HashMap<>();
				product.put("image", image);
				product.put("price", price);
				products.add(product);
			}
			mav.addObject("products", products);
			
		} catch (IOException e) {
			e.printStackTrace();
		}
		return mav;
	}
	@RequestMapping("/2n1.do")
	public ModelAndView event2() {
		ModelAndView mav = new ModelAndView("mini/event/2n1");
		try {
			Document doc = Jsoup.connect("https://www.ministop.co.kr/MiniStopHomePage/page/event/plus2.do").get();
			Elements list = doc.select(".event_plus_list > ul > li > a");
			List products = new ArrayList();
			for (Element m : list) {
				Elements sList0 = m.select("img");
				Elements sList2 = m.select("p");
			
				String image = sList0.get(0).attr("src").replace("..", ""); 
				String price = sList2.get(0).html();
				HashMap<String, String> product = new HashMap<>();
				product.put("image", image);
				product.put("price", price);
				products.add(product);
			}
			mav.addObject("products", products);
			
		} catch (IOException e) {
			e.printStackTrace();
		}
		return mav;
	}
	@RequestMapping("/dum.do")
	public ModelAndView event3() {
		ModelAndView mav = new ModelAndView("mini/event/dum");
		
		try {
			Document doc = Jsoup.connect("https://www.ministop.co.kr/MiniStopHomePage/page/querySimple.do?pageId=event/add&sqlnum=1&paramInfo=3&pageNum=1&sortGu").get();
			Elements list = doc.select("li > .box");
			List products = new ArrayList();
			for (Element e : list) {
				Elements sList0 = e.select(".productImg > img");
				Elements sList1 = e.select(".productDiv");
				Elements sList2 = e.select(".price");
				String image = sList0.get(0).attr("src");
				String name = sList1.get(0).html().substring(sList1.get(0).html().indexOf(")") + 1);
				String price = sList2.get(0).html();
				HashMap<String, String> product = new HashMap<>();
				product.put("image", image);
				product.put("name", name);
				product.put("price", price);
				products.add(product);
			}
			mav.addObject("products", products);
			
		} catch (IOException e) {
			e.printStackTrace();
		}
		return mav;
	}
	
	
	@RequestMapping("/nx.do")
	public ModelAndView event4() {
		ModelAndView mav = new ModelAndView("mini/event/2n1");
		try {
			Document doc = Jsoup.connect("https://www.ministop.co.kr/MiniStopHomePage/page/event/plus4.do").get();
			Elements list = doc.select(".event_plus_list > ul > li > a");
			List products = new ArrayList();
			for (Element m : list) {
				Elements sList0 = m.select("img");
				Elements sList2 = m.select("p");
			
				String image = sList0.get(0).attr("src").replace("..", ""); 
				String price = sList2.get(0).html();
				HashMap<String, String> product = new HashMap<>();
				product.put("image", image);
				product.put("price", price);
				products.add(product);
			}
			mav.addObject("products", products);
			
		} catch (IOException e) {
			e.printStackTrace();
		}
		return mav;
	}
	
}
