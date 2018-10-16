package kr.co.laonzena.controller.login;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.laonzena.common.db.MyAppSqlConfig;
import kr.co.laonzena.repository.domain.Member;
import kr.co.laonzena.repository.mapper.LoginMapper;

@WebServlet("/login/log-in.do")
public class LoginController extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		String memberId = request.getParameter("id");
		String memberPass = request.getParameter("pass");
		
		System.out.println("id : " + memberId);
		System.out.println("pass : " + memberPass);
		
		Member member = new Member();
		member.setMemberId(memberId);
		member.setMemberPass(memberPass);
		
		LoginMapper mapper = MyAppSqlConfig.getSqlSessionInstance().getMapper(LoginMapper.class);
		Member login = mapper.selectMemberInfo(member);
		System.out.println(login);
		
		if(login == null) {
			System.out.println("로그인 실패");
			PrintWriter out = response.getWriter();
			out.println("로그인 실패");
			out.close();
			return;
		}
		
		System.out.println("로그인 성공");
		HttpSession session = request.getSession();
		session.setAttribute("user", login);
		
		PrintWriter out = response.getWriter();
		out.println("로그인 성공");
		out.close();
	}
	
	
}
