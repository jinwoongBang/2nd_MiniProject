package kr.co.laonzena.repository.mapper;

import kr.co.laonzena.repository.domain.Member;

public interface MemberMapper {
	
	void insertMember(Member member);
	Member selectMember(Member member);
	
}
