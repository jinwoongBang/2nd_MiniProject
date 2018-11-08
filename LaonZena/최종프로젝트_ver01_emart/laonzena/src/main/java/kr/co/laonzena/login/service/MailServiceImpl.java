package kr.co.laonzena.login.service;

import javax.annotation.Resource;
import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

@Service
public class MailServiceImpl implements MailService {
	
	@Resource(name="javaMailSender")
	private JavaMailSender javaMailSender;
	
	@Override
	public boolean send(String subject, String text, String from, String to) {
		System.out.println("Before ::::: javaMailSender Service() Invoked");
		System.out.println("subject : " + subject);
        System.out.println("text : " + text);
        System.out.println("from : " + from);
        System.out.println("to : " + to);
        System.out.println("javaMailSender : " + javaMailSender);
        System.out.println("javaMailSender.createMimeMessage() : " + javaMailSender.createMimeMessage());
		MimeMessage message = javaMailSender.createMimeMessage();
		System.out.println("After ::::: javaMailSender Service() Invoked");
		
		try {
			MimeMessageHelper helper = new MimeMessageHelper(message, true, "UTF-8");
			helper.setSubject(subject);
			helper.setText(text);
			helper.setFrom(from);
			helper.setTo(to);
		
		/*
		 	[첨부 파일 처리]
			if (filePath != null) {
                File file = new File(filePath);
                if (file.exists()) {
                    helper.addAttachment(file.getName(), new File(filePath));
                }
            }
		*/
			
			javaMailSender.send(message);
			return true;
			
		} catch (MessagingException e) {
			e.printStackTrace();
		}
		
		return false;
	}
}