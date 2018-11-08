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
@RequestMapping("/cu/product")
public class CuProductController {
	@Autowired
	private CuProductController service;

	@RequestMapping("/productInstant.do")
	public ModelAndView product1() {
		ModelAndView mav = new ModelAndView("cu/product/productInstant");
		
		try {
			Document doc = Jsoup.connect("http://cu.bgfretail.com/product/productAjax.do?pageIndex=1&searchMainCategory=20&listType=0&gdIdx=0&codeParent=20").get();
			// System.out.println(doc.html());
			Elements list = doc.select(".prodListWrap > ul > li");
			List products = new ArrayList();
				for (Element e : list) {
//					 System.out.println(e.html());
					Elements sList0 = e.select(".photo a img");
					Elements sList1 = e.select(".prodName > span");
					Elements sList2 = e.select(".prodPrice > span");
//					 System.out.println(
//					 sList0.get(0).html() + "\t" +
//					 sList1.get(0).html().substring(sList1.get(0).html().indexOf(")")+1) + "\t" +
//					 sList1.get(2).html() + "\t" +
//					 sList1.get(3).html() + "\t" +
//					 sList2.get(0).html()
//					 );
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
	
	@RequestMapping("/productSim.do")
	public ModelAndView product2() {
		ModelAndView mav = new ModelAndView("cu/product/productSim");
		
		try {
			Document doc = Jsoup.connect("http://cu.bgfretail.com/product/productAjax.do?pageIndex=1&searchMainCategory=10&listType=0&gdIdx=0&codeParent=10").get();
			Elements list = doc.select(".prodListWrap > ul > li");
			List products = new ArrayList();
				for (Element e : list) {

					Elements sList0 = e.select(".photo a img");
					Elements sList1 = e.select(".prodName > span");
					Elements sList2 = e.select(".prodPrice > span");

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
	
	@RequestMapping("/productSnack.do")
	public ModelAndView product3() {
		ModelAndView mav = new ModelAndView("cu/product/productSnack");
		
		try {
			Document doc = Jsoup.connect("http://cu.bgfretail.com/product/productAjax.do?pageIndex=1&searchMainCategory=30&listType=0&gdIdx=0&codeParent=30").get();
			Elements list = doc.select(".prodListWrap > ul > li");
			List products = new ArrayList();
				for (Element e : list) {

					Elements sList0 = e.select(".photo a img");
					Elements sList1 = e.select(".prodName > span");
					Elements sList2 = e.select(".prodPrice > span");

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

		@RequestMapping("/productIce.do")
		public ModelAndView product4() {
			ModelAndView mav = new ModelAndView("cu/product/productIce");
			
			try {
				Document doc = Jsoup.connect("http://cu.bgfretail.com/product/productAjax.do?pageIndex=1&searchMainCategory=40&listType=0&gdIdx=0&codeParent=40").get();
				Elements list = doc.select(".prodListWrap > ul > li");
				List products = new ArrayList();
					for (Element e : list) {

						Elements sList0 = e.select(".photo a img");
						Elements sList1 = e.select(".prodName > span");
						Elements sList2 = e.select(".prodPrice > span");

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
		
		
		@RequestMapping("/productFood.do")
		public ModelAndView product5() {
			ModelAndView mav = new ModelAndView("cu/product/productFood");
			
			try {
				Document doc = Jsoup.connect("http://cu.bgfretail.com/product/productAjax.do?pageIndex=1&searchMainCategory=50&listType=0&gdIdx=0&codeParent=50").get();
				Elements list = doc.select(".prodListWrap > ul > li");
				List products = new ArrayList();
					for (Element e : list) {

						Elements sList0 = e.select(".photo a img");
						Elements sList1 = e.select(".prodName > span");
						Elements sList2 = e.select(".prodPrice > span");

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
		
		@RequestMapping("/productDrink.do")
		public ModelAndView product6() {
			ModelAndView mav = new ModelAndView("cu/product/productDrink");
			
			try {
				Document doc = Jsoup.connect("http://cu.bgfretail.com/product/productAjax.do?pageIndex=1&searchMainCategory=60&listType=0&gdIdx=0&codeParent=60").get();
				Elements list = doc.select(".prodListWrap > ul > li");
				List products = new ArrayList();
					for (Element e : list) {

						Elements sList0 = e.select(".photo a img");
						Elements sList1 = e.select(".prodName > span");
						Elements sList2 = e.select(".prodPrice > span");

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
		
		@RequestMapping("/productLiving.do")
		public ModelAndView product7() {
			ModelAndView mav = new ModelAndView("cu/product/productLiving");
			
			try {
				Document doc = Jsoup.connect("http://cu.bgfretail.com/product/productAjax.do?pageIndex=1&searchMainCategory=70&listType=0&gdIdx=0&codeParent=70").get();
				Elements list = doc.select(".prodListWrap > ul > li");
				List products = new ArrayList();
					for (Element e : list) {

						Elements sList0 = e.select(".photo a img");
						Elements sList1 = e.select(".prodName > span");
						Elements sList2 = e.select(".prodPrice > span");

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
} // end class
