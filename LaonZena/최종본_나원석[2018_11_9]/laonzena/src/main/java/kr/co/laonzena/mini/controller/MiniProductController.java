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
@RequestMapping("/mini/product")
public class MiniProductController {
	@Autowired
	private MiniProductController service;

	@RequestMapping("/ice.do")
	public ModelAndView event1() {
		ModelAndView mav = new ModelAndView("mini/product/ice");
		try {
			Document doc = Jsoup.connect("https://www.ministop.co.kr/MiniStopHomePage/page/softcream/list2.do").get();
			Elements list = doc.select(".menu_list > li > a");
			List products = new ArrayList();
			for (Element m : list) {
				Elements sList0 = m.select("img");
				Elements sList2 = m.select("p");
			
				String image = sList0.get(0).attr("src").replace("..", ""); //.replace("..", "")
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

	@RequestMapping("/chick.do")
	public ModelAndView event2() {
		ModelAndView mav = new ModelAndView("mini/product/chick");
		try {
			Document doc = Jsoup.connect("https://www.ministop.co.kr/MiniStopHomePage/page/fastfood/list2_1.do").get();
			Elements list = doc.select(".menu_list > li > a");
			List products = new ArrayList();
			for (Element m : list) {
				Elements sList0 = m.select("img");
				Elements sList2 = m.select("p");
			
				String image = sList0.get(0).attr("src").replace("..", ""); //.replace("..", "")
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
	
	@RequestMapping("/rhwl.do")
	public ModelAndView event3() {
		ModelAndView mav = new ModelAndView("mini/product/rhwl");
		try {
			Document doc = Jsoup.connect("https://www.ministop.co.kr/MiniStopHomePage/page/fastfood/list2_2.do").get();
			Elements list = doc.select(".menu_list > li > a");
			List products = new ArrayList();
			for (Element m : list) {
				Elements sList0 = m.select("img");
				Elements sList2 = m.select("p");
			
				String image = sList0.get(0).attr("src").replace("..", ""); //.replace("..", "")
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
	
	@RequestMapping("/rhkwk.do")
	public ModelAndView event4() {
		ModelAndView mav = new ModelAndView("mini/product/rhkwk");
		try {
			Document doc = Jsoup.connect("https://www.ministop.co.kr/MiniStopHomePage/page/guide/list_5.do").get();
			Elements list = doc.select(".menu_list > li > a");
			List products = new ArrayList();
			for (Element m : list) {
				Elements sList0 = m.select("img");
				Elements sList2 = m.select("p");
			
				String image = sList0.get(0).attr("src").replace("..", ""); //.replace("..", "")
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
	
	@RequestMapping("/dessert.do")
	public ModelAndView event5() {
		ModelAndView mav = new ModelAndView("mini/product/dessert");
		try {
			Document doc = Jsoup.connect("https://www.ministop.co.kr/MiniStopHomePage/page/fastfood/list3_1.do").get();
			Elements list = doc.select(".menu_list > li > a");
			List products = new ArrayList();
			for (Element m : list) {
				Elements sList0 = m.select("img");
				Elements sList2 = m.select("p");
			
				String image = sList0.get(0).attr("src").replace("..", ""); //.replace("..", "")
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

	@RequestMapping("/dosic.do")
	public ModelAndView event6() {
		ModelAndView mav = new ModelAndView("mini/product/dosic");
		try {
			Document doc = Jsoup.connect("https://www.ministop.co.kr/MiniStopHomePage/page/guide/list.do").get();
			Elements list = doc.select(".menu_list > li > a");
			List products = new ArrayList();
			for (Element m : list) {
				Elements sList0 = m.select("img");
				Elements sList2 = m.select("p");
			
				String image = sList0.get(0).attr("src").replace("..", ""); //.replace("..", "")
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

} // end class

