package kr.co.laonzena.emart.controller;

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
@RequestMapping("/emart/product")
public class EmartProductController {
	@Autowired
	private EmartProductController service;

	@RequestMapping("/product.do")
	public ModelAndView event() {
		ModelAndView mav = new ModelAndView("emart/product/product");
		
		try {
			Document doc = Jsoup.connect("https://www.emart24.co.kr/product/emart24.asp").get();
			// System.out.println(doc.html());
			Elements list = doc.select("ul.categoryListNew > li > .box");
			List products = new ArrayList();
				for (Element e : list) {
					// System.out.println(e.html());
					Elements sList0 = e.select(".productImg > img");
					Elements sList1 = e.select(".productDiv");
					Elements sList2 = e.select("span");
					// System.out.println(
					// sList1.get(0).html().substring(sList1.get(0).html().indexOf(")")+1) + "\t" +
					// sList1.get(2).html() + "\t" +
					// sList1.get(3).html() + "\t" +
					// sList2.get(0).html()
					// );
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

