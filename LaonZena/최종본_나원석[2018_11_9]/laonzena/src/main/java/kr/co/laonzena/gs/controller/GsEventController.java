package kr.co.laonzena.gs.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Arrays;
import java.util.List;

import javax.net.ssl.HttpsURLConnection;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
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
	
	@RequestMapping(value="/event.do")
	public void event(Model model, @RequestParam(value="type") String type) {
		System.out.println("eventOne() invoked");
		Document doc;
		String CSRFToken = "a940a9de-92bf-4924-9738-bd4e211cbb3a";
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
		
//		URL obj;
//		try {
//			obj = new URL(url);
//			HttpsURLConnection con = (HttpsURLConnection) obj.openConnection();
//			BufferedReader br = new BufferedReader(new InputStreamReader(con.getInputStream(), "utf-8"));
//			
//			while (true) {
//				String line = br.readLine();
//				if (line == null) break;
//				
//				// 서버에서 보내준 응답 데이터
//				System.out.println(line);
//			}
//		} catch (Exception e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
		
		Gson gson = new Gson();
		try {
			doc = Jsoup.connect(url)
//					.header("Content-Type","application/x-www-form-urlencoded;charset=UTF-8")
//					.userAgent("Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36")
//					.header("Accept", "application/json, text/javascript, */*; q=0.01")
//					.header("Accept-Encoding", "gzip, deflate")
//					.header("Accept-Language", "ko-KR,ko;q=0.9,en-US;q=0.8,en;q=0.7")
//					.header("Connection", "keep-alive")
//					.header("Content-Length", "69")
					.header("Content-Type", "application/json;charset=UTF-8")
//					.header("Connection", "Keep-Alive")
//					.header("Cookie", "s_fid=068F1512F628E019-3C593DCA8308A508; _BS_GUUID=jrfs9yBTnRQoBQt38wK0Cn9XPx4yBZoVqDozc0tz; _ga=GA1.3.638201393.1540712700; _ga=GA1.2.1016766995.1541043935; _gid=GA1.3.2093186812.1541593228; _gid=GA1.2.1172201518.1541595026; _TRK_CR22400=http%3A%2F%2Fgs25.gsretail.com%2Fgscvs%2Fko%2Fproducts%2Fevent-goods; JSESSIONID=A7EED1B5C7183C92EA3FD7803DB1ED4F.htomcat2; s_cc=true; _TRK_UID=56b40ef0beb2cb5af3209d56c43e7c57:1:0.10363737268518519:1541658513805; _TRK_EX22400=4; _TRK_SID=903e67001e083e861eeb8373860669fe; s_sq=%5B%5BB%5D%5D")
//					.header("Host", "gs25.gsretail.com")
//					.header("Origin", "http://gs25.gsretail.com")
//					.header("Referer", "http://gs25.gsretail.com/gscvs/ko/products/event-goods")
//					.header("X-Requested-With", "http://gs25.gsretail.com/gscvs/ko/products/event-goods")
					.get();
			
//			InputStream is = new URL(oriUrl).openStream();

//            parse document using input stream and specify the charset
//            doc = Jsoup.parse(inStream, "ISO-8859-15", url);
//            doc = Jsoup.parse(inStream, "UTF-8", url);
			
			String data = doc.text();
			try {
//				System.out.println(Arrays.toString(data.getBytes("8859_1")));
//				System.out.println(Arrays.toString(data.getBytes()));
				System.out.println(new String(data.getBytes("8859_1"), "UTF-8"));
				System.out.println(new String(data.getBytes("8859_1"), "EUC-KR"));
			} finally {
				
			}
			
			GsProduct gs = gson.fromJson(doc.text(), GsProduct.class);
			List<Results> list = gs.getResults();

//			for(Results g : list) {
//				System.out.println("이미지 : "+g.getAttFileNmOld());
//				System.out.println("유형 : "+g.getEventTypeNm());
//				System.out.println("가격 : "+g.getPrice());
//				System.out.println("상품명 : " + g.getGoodsNm());
//			}
			model.addAttribute("list", list);
			
		} catch (IOException e) {
			e.printStackTrace();
		
		}
	}
}
