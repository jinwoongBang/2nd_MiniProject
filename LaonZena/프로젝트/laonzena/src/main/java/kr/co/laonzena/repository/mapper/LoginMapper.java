package kr.co.laonzena.repository.mapper;

import kr.co.laonzena.repository.domain.Member;

public interface LoginMapper {
	Member selectMemberInfo(Member member);
}
