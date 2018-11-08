package kr.co.laonzena.login.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.view.UrlBasedViewResolver;

import kr.co.laonzena.login.service.SigninService;
import kr.co.laonzena.repository.domain.Member;

@Controller("kr.co.laonzena.login.controller.SigninController")
@RequestMapping("/login")
public class SigninController {
	
	@Autowired
	private SigninService service;
	
	@RequestMapping("/signinForm.do")
	public void signinForm() {
		System.out.println("signinForm() invoked");
	}
	
	@RequestMapping("/signin.do")
	public String signin(Member member) {
		System.out.println("signin() invoked");
		service.signinMember(member);
		return UrlBasedViewResolver.REDIRECT_URL_PREFIX + "/login/loginForm.do";
	}
	
	@RequestMapping("/identificationConfirm.do")
	@ResponseBody
	public Member identificationConfirm(Member member) {
		System.out.println("identificationConfirm() invoked");
		return service.identificationConfirm(member);
	}
}
