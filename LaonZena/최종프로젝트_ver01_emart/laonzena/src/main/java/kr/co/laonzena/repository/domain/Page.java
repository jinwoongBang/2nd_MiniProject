package kr.co.laonzena.repository.domain;

public class Page {

	private int pageNo;

	public int getPageNo() {
		return pageNo;
	}

	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}

	public int getBeginNo() {
		return pageNo*10-9;
	}

	public int getEndNo() {
		return pageNo*10;
	}

	
	
	
	
}
