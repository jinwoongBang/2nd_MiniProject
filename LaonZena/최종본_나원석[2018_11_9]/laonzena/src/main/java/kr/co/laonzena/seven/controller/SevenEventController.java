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
@RequestMapping("/seven/event")
public class SevenEventController {
	
	@RequestMapping("/1n1.do")
	public ModelAndView onePlus() {
		ModelAndView mav = new ModelAndView("seven/event/1n1");
		
		try {
			Document doc = Jsoup.connect("http://www.7-eleven.co.kr/product/presentList.asp").get();
//			Document doc2 = Jsoup.connect("http://www.7-eleven.co.kr/product/listMoreAjax.asp?intPageSize=10&pTab=1").get();

			Elements list = doc.select("div.pic_product");
			List products = new ArrayList();
				for (Element e : list) {
					// System.out.println(e.html());
					Elements sList0 = e.select(".pic_product > img");
					Elements sList1 = e.select(".infowrap > .name");
					Elements sList2 = e.select(".infowrap >.price");

					String image = sList0.attr("src");
					String name = sList1.html();
					String price = sList2.text();
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
