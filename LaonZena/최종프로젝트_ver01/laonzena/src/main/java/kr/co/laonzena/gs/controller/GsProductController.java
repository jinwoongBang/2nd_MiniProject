package kr.co.laonzena.gs.controller;

import java.io.IOException;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/gs/product")
public class GsProductController {

	@RequestMapping("/product.do")
	public void product(@RequestParam(value="type") String type, Model model) {
		System.out.println("product() invoked");
		Document doc;
		String CSRFToken = "4eba3321-7cf0-4aec-a442-bf63e834c076";
		String pageNum = "1";
		String pageSize = "8";
//		searchFoodCK: FreshFood
//		searchNonFoodCK: NonFreshFood
//		searchSort: searchALLSort
		
		//http://gs25.gsretail.com/products/youus-main-search?CSRFToken=4eba3321-7cf0-4aec-a442-bf63e834c076
		//productAll
		//productLunch
		//productRice
		//productBurger
		//productSnack
		
		
		//http://gs25.gsretail.com/products/youus-freshfoodDetail-search?CSRFToken=150d1137-b8b5-4262-a2c2-1f28edb83996
//		String url = "gs25.gsretail.com/products/youus-main-search?CSRFToken="
//						+CSRFToken
//						+"&pageNum="
//						+pageNum
//						+"&searchProduct="
//						+ type
//						+"&searchSrvFoodCK=FreshFoodKey&searchSort=searchALLSort";
		String url = "http://gs25.gsretail.com/gscvs/ko/products/youus-main?CSRFToken=4eba3321-7cf0-4aec-a442-bf63e834c076&searchFoodCK=FreshFood&searchNonFoodCK=NonFreshFood&searchSort=searchALLSort";
		
		try {
			doc = Jsoup.connect(url).get();
			System.out.println(doc.text());
			System.out.println(doc.html());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
}
