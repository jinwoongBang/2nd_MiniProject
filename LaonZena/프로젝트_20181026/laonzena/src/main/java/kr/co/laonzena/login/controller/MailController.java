package kr.co.laonzena.login.controller;

import java.util.Random;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.laonzena.login.service.MailService;

/**
 * 
 * @author ������
 * @category �̸��� ���� ����
 * {@link} http://wfreud.tistory.com/178
 */

@Controller
@RequestMapping("/login")
public class MailController {
	
	@Autowired
	private MailService service;
	
	// ȸ������ �̸��� ����
    @RequestMapping(value = "/sendMail.do", method = RequestMethod.POST, produces = "application/json")
    @ResponseBody
    public boolean sendMailAuth(HttpSession session, @RequestParam String memberEmail) {
    	System.out.println("sendMailAuth() invoked");
        int ran = new Random().nextInt(100000) + 10000; // 10000 ~ 99999
        String joinCode = String.valueOf(ran);
        session.setAttribute("joinCode", joinCode);
 
        String subject = "LaonZena ȸ������ ���� �ڵ� �߱� �ȳ� �Դϴ�.";
        StringBuilder sb = new StringBuilder();
        sb.append("������ ���� �ڵ�� " + joinCode + " �Դϴ�.");
//        return service.send(subject, sb.toString(), "���̵�@gmail.com", email, null);
        System.out.println("subject : " + subject);
        System.out.println("sb.toString() : " + sb.toString());
        System.out.println("memberEmail : " + memberEmail);
        return service.send(subject, sb.toString(), "Bit.LaonZena@gmail.com", memberEmail);
    }
}
