package kr.co.laonzena.gs.controller;

import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.List;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.google.gson.Gson;

import kr.co.laonzena.gs.service.GsEventService;
import kr.co.laonzena.repository.domain.GsProduct;
import kr.co.laonzena.repository.domain.Results;


@Controller
@RequestMapping("/gs/event")
public class GsEventController {

	@Autowired
	private GsEventService service;
	
	@RequestMapping(value="/event.do", produces="text/plain;charset=utf-8" )
	public void event(Model model, @RequestParam(value="type") String type) {
		System.out.println("eventOne() invoked");
		Document doc;
		String CSRFToken = "150d1137-b8b5-4262-a2c2-1f28edb83996";
		String pageNum = "1";
//		String parameterList1 = "ONE_TO_ONE";
//		String parameterList2 = "TWO_TO_ONE";
//		String parameterList3 = "GIFT";
//		String parameterList4 = "TOTAL";
		String pageSize = "8";
		
		String oriUrl="http://gs25.gsretail.com/gscvs/ko/products/event-goods";
		/*
		try {
			BufferedReader br = new BufferedReader(
					new InputStreamReader(url.openStream(), "utf-8")
			);
			while (true) {
				String line = br.readLine();
				if (line == null) break;
				
				System.out.println(line);
			}
			
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		*/
		String url = "http://gs25.gsretail.com/gscvs/ko/products/event-goods-search?CSRFToken="+CSRFToken+"&pageNum="+pageNum+"&parameterList="+type+"&pageSize=8";
		Gson gson = new Gson();
		try {
			doc = Jsoup.connect(url).get();
			InputStream is = new URL(oriUrl).openStream();
			System.out.println(doc.html());
//            parse document using input stream and specify the charset
//            doc = Jsoup.parse(inStream, "ISO-8859-15", url);
//            doc = Jsoup.parse(inStream, "UTF-8", url);
			GsProduct gs = gson.fromJson(doc.text(), GsProduct.class);
			List<Results> list = gs.getResults();

			for(Results g : list) {
				System.out.println("이미지 : "+g.getAttFileNmOld());
				System.out.println("유형 : "+g.getEventTypeNm());
				System.out.println("가격 : "+g.getPrice());
				System.out.println("상품명 : " + g.getGoodsNm());
			}
			model.addAttribute("list", list);
			
		} catch (IOException e) {
			e.printStackTrace();
		
		}
	}
}
