package kr.co.laonzena.login.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.laonzena.repository.domain.Member;
import kr.co.laonzena.repository.mapper.MemberMapper;

@Service
public class LoginServiceImpl implements LoginService {

	@Autowired
	private MemberMapper mapper;
	
	@Override
	public Member loginMember(Member member) {
		System.out.println("들어온 값 :");
		System.out.println(member.getMemberId());
		System.out.println(member.getMemberPass());
		Member m = mapper.selectMember(member);
		System.out.println("나온 값 :");
		System.out.println(m.getMemberId());
		System.out.println(m.getMemberPass());
	
		return m;
	}

}
