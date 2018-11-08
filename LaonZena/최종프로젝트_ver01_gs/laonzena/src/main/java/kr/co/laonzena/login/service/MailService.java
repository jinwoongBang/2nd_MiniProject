package kr.co.laonzena.login.service;

public interface MailService {

	/** 메일 인증 서비스
	 * @param subject	: 제목
	 * @param text		: 내용
	 * @param from		: 보내는 메일 주소
	 * @param to		: 받는 메일 주소
	 * @param filePath	: 첨부파일 경로 (없을시 null)
	 */
	public boolean send(String subject, String text, String from, String to /*, String filePath*/);
}
