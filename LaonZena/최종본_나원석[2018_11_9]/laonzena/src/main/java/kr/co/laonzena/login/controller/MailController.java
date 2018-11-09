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
 * @author 방진웅
 * @category 이메일 인증 서비스
 * {@link} http://wfreud.tistory.com/178
 */

@Controller
@RequestMapping("/login")
public class MailController {
	
	@Autowired
	private MailService service;
	
	// 회원가입 이메일 인증
    @RequestMapping(value = "/sendMail.do", method = RequestMethod.POST, produces = "application/json")
    @ResponseBody
    public boolean sendMailAuth(HttpSession session, @RequestParam String memberEmail) {
    	System.out.println("sendMailAuth() invoked");
        int ran = new Random().nextInt(100000) + 10000; // 10000 ~ 99999
        String joinCode = String.valueOf(ran);
        session.setAttribute("joinCode", joinCode);
 
        String subject = "LaonZena 회원가입 인증 코드 발급 안내 입니다.";
        StringBuilder sb = new StringBuilder();
        sb.append("귀하의 인증 코드는 " + joinCode + " 입니다.");
//        return service.send(subject, sb.toString(), "아이디@gmail.com", email, null);
        System.out.println("subject : " + subject);
        System.out.println("sb.toString() : " + sb.toString());
        System.out.println("memberEmail : " + memberEmail);
        return service.send(subject, sb.toString(), "Bit.LaonZena@gmail.com", memberEmail);
    }
}
