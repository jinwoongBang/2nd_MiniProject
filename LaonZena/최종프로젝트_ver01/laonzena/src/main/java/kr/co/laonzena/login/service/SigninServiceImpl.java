package kr.co.laonzena.login.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.laonzena.repository.domain.Member;
import kr.co.laonzena.repository.mapper.MemberMapper;

@Service
public class SigninServiceImpl implements SigninService {

	@Autowired
	private MemberMapper mapper;

	@Override
	public void signinMember(Member member) {
		mapper.insertMember(member);
	}

	@Override
	public Member identificationConfirm(Member member) {
		return mapper.selectMember(member);
	}
	
	
	
	
	
}
