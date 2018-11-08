package kr.co.laonzena.repository.domain;

public class Results {
	String eventTypeNm;
	int price;
	String attFileNmOld;
	String goodsNm;
	
	public String getGoodsNm() {
		return goodsNm;
	}
	public void setGoodsNm(String goodsNm) {
		this.goodsNm = goodsNm;
	}
	public String getEventTypeNm() {
		return eventTypeNm;
	}
	public void setEventTypeNm(String eventTypeNm) {
		this.eventTypeNm = eventTypeNm;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getAttFileNmOld() {
		return attFileNmOld;
	}
	public void setAttFileNmOld(String attFileNmOld) {
		this.attFileNmOld = attFileNmOld;
	}
	
	
}
