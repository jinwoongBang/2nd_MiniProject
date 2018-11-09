package kr.co.laonzena.seven.crawling;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class Crawling {
	public static void main(String[] args) {

		try {
			Document doc = Jsoup.connect("http://www.7-eleven.co.kr/product/presentList.asp?intPageSize=10&pTab=1").get();
			Elements list = doc.select(".pic_product");
			Elements sList1 = null;
			List products = new ArrayList();
				for (Element e : list) {
					// System.out.println(e.html());
					Elements sList0 = e.select(".pic_product > img");
					sList1 = e.select(".infowrap > .name");
					Elements sList2 = e.select(".infowrap >.price");

					
//					System.out.println(sList1.html());
//					System.out.println(sList1.size());
					
//					String image = sList0.get(0).attr("src");
//					String name = sList1.get(0).html();
					String price = sList2.text();	
					System.out.println(price);
				}
				
					
					
				
//
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
