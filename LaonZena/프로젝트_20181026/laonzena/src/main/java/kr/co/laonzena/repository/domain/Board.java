package kr.co.laonzena.repository.domain;

import java.util.Date;

public class Board {
	private int no;
	private String title;
	private Date regDate;
	private int category;
	private String product;
	private int viewCnt;
	private int recomCnt;
	private String oriName;
	private String serName;
	private String serPath;
	private String writer;
	private String content;
	
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public int getCategory() {
		return category;
	}
	public void setCategory(int category) {
		this.category = category;
	}
	public String getProduct() {
		return product;
	}
	public void setProduct(String product) {
		this.product = product;
	}
	public int getViewCnt() {
		return viewCnt;
	}
	public void setViewCnt(int viewCnt) {
		this.viewCnt = viewCnt;
	}
	public int getRecomCnt() {
		return recomCnt;
	}
	public void setRecomCnt(int recomCnt) {
		this.recomCnt = recomCnt;
	}
	public String getOriName() {
		return oriName;
	}
	public void setOriName(String oriName) {
		this.oriName = oriName;
	}
	public String getSerName() {
		return serName;
	}
	public void setSerName(String serName) {
		this.serName = serName;
	}
	public String getSerPath() {
		return serPath;
	}
	public void setSerPath(String serPath) {
		this.serPath = serPath;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	@Override
	public String toString() {
		return "Board [no=" + no + ", title=" + title + ", regDate=" + regDate + ", category=" + category + ", product="
				+ product + ", viewCnt=" + viewCnt + ", recomCnt=" + recomCnt + ", oriName=" + oriName + ", serName="
				+ serName + ", serPath=" + serPath + ", writer=" + writer + "]";
	}
	
	
	
	
	
	
}
