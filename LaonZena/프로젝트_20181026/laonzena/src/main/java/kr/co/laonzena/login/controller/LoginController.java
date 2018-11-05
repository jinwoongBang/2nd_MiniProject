package kr.co.laonzena.login.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.view.UrlBasedViewResolver;

import kr.co.laonzena.login.service.LoginService;
import kr.co.laonzena.repository.domain.Member;

@Controller("kr.co.laonzena.login.controller.LoginController")
@RequestMapping("/login")
public class LoginController {
	
	
	
	@Autowired
	private LoginService service;

	@RequestMapping("/loginForm.do")
	public void loginForm() {
		System.out.println("loginForm() invoked");
	}
	
	@RequestMapping("/login.do")
	public String login(HttpSession session, Member member) {
		System.out.println("login() invoked");
		Member m;
		try {
			m = service.loginMember(member);
		} catch (NullPointerException e) {
			System.out.println("해당 아이디가 존재하지 않습니다."); 
			return UrlBasedViewResolver.REDIRECT_URL_PREFIX + "/login/loginForm.do";
		}
		session.setAttribute("user", m);
		
		return UrlBasedViewResolver.REDIRECT_URL_PREFIX + "/main/main.do";
	}
	
	@RequestMapping("/logout.do")
	public String login(HttpSession session) {
		session.invalidate();
		System.out.println("logout() invoked");
		return UrlBasedViewResolver.REDIRECT_URL_PREFIX + "/main/main.do";
	}
	
}
