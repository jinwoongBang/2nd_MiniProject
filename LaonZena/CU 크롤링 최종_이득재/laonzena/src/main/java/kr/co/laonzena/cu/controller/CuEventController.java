package kr.co.laonzena.cu.controller;

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
@RequestMapping("/cu/event")
public class CuEventController {
	@Autowired
	private CuEventController service;
	
	@RequestMapping("/1n1.do")
	public ModelAndView event1() {
		ModelAndView mav = new ModelAndView("cu/event/1n1");
		
		try {
			Document doc = Jsoup.connect("http://cu.bgfretail.com/event/plusAjax.do?pageIndex=1&listType=0&searchCondition=23").get();
//			 System.out.println(doc.html());
			Elements list = doc.select("body > ul > li");
			List products = new ArrayList();
			for (Element e : list) {
//				System.out.println(e.html());
				Elements sList0 = e.select(".photo a img");
				Elements sList1 = e.select(".prodName > a");
				Elements sList2 = e.select(".prodPrice > span");

//				System.out.println(
//					sList0.get(0).html() + "\t" +
//					sList1.get(0).html().substring(sList1.get(0).html().indexOf(">")+1) + "\t" +
//					sList1.get(2).html() + "\t" +
//					sList1.get(3).html() + "\t" +
//					sList2.get(0).html()
//					);
				
				String image = sList0.get(0).attr("src");
				String name = sList1.get(0).html().substring(sList1.get(0).html().indexOf(">")+1);
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
	
	
	@RequestMapping("/2n1.do")
	public ModelAndView event2() {
		ModelAndView mav = new ModelAndView("cu/event/2n1");
		
		try {
			Document doc = Jsoup.connect("http://cu.bgfretail.com/event/plusAjax.do?pageIndex=1&listType=0&searchCondition=24").get();
//			System.out.println(doc.html());
			Elements list = doc.select("body > ul > li");
			List products = new ArrayList();
			for (Element e : list) {
				// System.out.println(e.html());
				Elements sList0 = e.select(".photo a img");
				Elements sList1 = e.select(".prodName > a");
				Elements sList2 = e.select(".prodPrice > span");
//				 System.out.println(
//				 sList1.get(0).html().substring(sList1.get(0).html().indexOf(")")+1) + "\t" +
//				 sList1.get(2).html() + "\t" +
//				 sList1.get(3).html() + "\t" +
//				 sList2.get(0).html()
//				 );
				String image = sList0.get(0).attr("src");
				String name = sList1.get(0).html().substring(sList1.get(0).html().indexOf(">")+1);
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
	
	@RequestMapping("/3n1.do")
	public ModelAndView event3() {
		ModelAndView mav = new ModelAndView("cu/event/3n1");
		
		try {
			Document doc = Jsoup.connect("http://cu.bgfretail.com/event/plusAjax.do?pageIndex=1&listType=0&searchCondition=49").get();
//			System.out.println(doc.html());
			Elements list = doc.select("body > ul > li");
			List products = new ArrayList();
			for (Element e : list) {
				// System.out.println(e.html());
				Elements sList0 = e.select(".photo a img");
				Elements sList1 = e.select(".prodName > a");
				Elements sList2 = e.select(".prodPrice > span");

				String image = sList0.get(0).attr("src");
				String name = sList1.get(0).html().substring(sList1.get(0).html().indexOf(">")+1);
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
}
