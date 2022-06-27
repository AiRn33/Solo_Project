package com.sol.mapper;

import com.sol.domain.MemberVO;

public interface MemberMapper {

	int joinMember(MemberVO vo);
	int idCheck(MemberVO vo);
	MemberVO read(String email);
	MemberVO userGet(String email);
}
