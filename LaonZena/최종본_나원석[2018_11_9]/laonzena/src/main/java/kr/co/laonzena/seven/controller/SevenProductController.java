package kr.co.laonzena.seven.controller;

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
	
	
	@RequestMapping("/product.do")
	public ModelAndView product() {
		ModelAndView mav = new ModelAndView("seven/product/product");
		
		try {
			Document doc = Jsoup.connect("http://www.7-eleven.co.kr/product/dosirakNewMoreAjax.asp?intPageSize=40&pTab").get();
			Elements list = doc.select(".pic_product");
			List products = new ArrayList();
				for (Element e : list) {
					// System.out.println(e.html());
					Elements sList0 = e.select(".pic_product > img");
					Elements sList1 = e.select(".infowrap > .name");
					Elements sList2 = e.select(".infowrap >.price");

					String image = sList0.get(0).attr("src");
					String name = sList1.get(0).html();
					String price = sList2.get(0).text();
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
	
	@RequestMapping("/fast.do")
	public ModelAndView fast() {
		ModelAndView mav = new ModelAndView("seven/product/product");
		
		try {
			Document doc = Jsoup.connect("http://www.7-eleven.co.kr/product/dosirakNewMoreAjax.asp?intPageSize=9&pTab=d_group").get();
			Elements list = doc.select(".pic_product");
			List products = new ArrayList();
				for (Element e : list) {
					// System.out.println(e.html());
					Elements sList0 = e.select(".pic_product > img");
					Elements sList1 = e.select(".infowrap > .name");
					Elements sList2 = e.select(".infowrap >.price");

					String image = sList0.get(0).attr("src");
					String name = sList1.get(0).html();
					String price = sList2.get(0).text();
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
	
	@RequestMapping("/noodle.do")
	public ModelAndView gimbob() {
		ModelAndView mav = new ModelAndView("seven/product/product");
		
		try {
			Document doc = Jsoup.connect("http://www.7-eleven.co.kr/product/dosirakNewMoreAjax.asp?intPageSize=9&pTab=noodle").get();
			Elements list = doc.select(".pic_product");
			List products = new ArrayList();
				for (Element e : list) {
					// System.out.println(e.html());
					Elements sList0 = e.select(".pic_product > img");
					Elements sList1 = e.select(".infowrap > .name");
					Elements sList2 = e.select(".infowrap >.price");

					String image = sList0.get(0).attr("src");
					String name = sList1.get(0).html();
					String price = sList2.get(0).text();
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
	
	@RequestMapping("/rice.do")
	public ModelAndView dosirak() {
		ModelAndView mav = new ModelAndView("seven/product/product");
		
		try {
			Document doc = Jsoup.connect("http://www.7-eleven.co.kr/product/dosirakNewMoreAjax.asp?intPageSize=9&pTab=mini").get();
			Elements list = doc.select(".pic_product");
			List products = new ArrayList();
				for (Element e : list) {
					// System.out.println(e.html());
					Elements sList0 = e.select(".pic_product > img");
					Elements sList1 = e.select(".infowrap > .name");
					Elements sList2 = e.select(".infowrap >.price");

					String image = sList0.get(0).attr("src");
					String name = sList1.get(0).html();
					String price = sList2.get(0).text();
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
