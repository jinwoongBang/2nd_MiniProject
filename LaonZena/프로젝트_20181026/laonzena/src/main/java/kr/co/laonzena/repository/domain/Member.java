package kr.co.laonzena.repository.domain;

import java.util.Date;

public class Member {
	
	private int memberNo;
	private String memberId;
	private String memberPass;
	private String memberEmail;
	private String memberCellPhone;
	private String memberAddress;
	private String memberName;
	private Date memberRegDate;
	private String memberJuminNo;
	private String frontJuminNo;
	private String backJuminNo;
	
	
	public String getMemberJuminNo() {
		if(memberJuminNo == null) {
			memberJuminNo = frontJuminNo + "-" + backJuminNo;
		}
		return memberJuminNo;
	}
	public void setMemberJuminNo(String memberJuminNo) {
		this.memberJuminNo = memberJuminNo;
	}
	public String getFrontJuminNo() {
		return frontJuminNo;
	}
	public void setFrontJuminNo(String frontJuminNo) {
		this.frontJuminNo = frontJuminNo;
	}
	public String getBackJuminNo() {
		return backJuminNo;
	}
	public void setBackJuminNo(String backJuminNo) {
		this.backJuminNo = backJuminNo;
	}
	public int getMemberNo() {
		return memberNo;
	}
	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getMemberPass() {
		return memberPass;
	}
	public void setMemberPass(String memberPass) {
		this.memberPass = memberPass;
	}
	public String getMemberEmail() {
		return memberEmail;
	}
	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}
	public String getMemberCellPhone() {
		return memberCellPhone;
	}
	public void setMemberCellPhone(String memberCellPhone) {
		this.memberCellPhone = memberCellPhone;
	}
	public String getMemberAddress() {
		return memberAddress;
	}
	public void setMemberAddress(String memberAddress) {
		this.memberAddress = memberAddress;
	}
	
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public Date getMemberRegDate() {
		return memberRegDate;
	}
	public void setMemberRegDate(Date memberRegDate) {
		this.memberRegDate = memberRegDate;
	}
	
}
