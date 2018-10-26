package kr.co.laonzena.login.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller("kr.co.laonzena.login.controller.LoginController")
@RequestMapping("/login")
public class LoginController {

	@RequestMapping("/loginForm.do")
	public void loginForm() {
		System.out.println("loginForm() invoked");
	}
}
