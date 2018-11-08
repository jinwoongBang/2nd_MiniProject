package kr.co.laonzena.login.service;

import kr.co.laonzena.repository.domain.Member;

public interface SigninService {

	void signinMember(Member member);
	Member identificationConfirm(Member member);
	
}
