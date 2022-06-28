package com.sol.mapper;

import com.sol.domain.MemberVO;

public interface MemberMapper {

	int joinMember(MemberVO vo);
	int joinMemberAuth(String email);
	int idCheck(MemberVO vo);
	MemberVO read(String email);
	MemberVO userGet(String userNumber);
	int memberNumber(String email);
	String memberName(int userNumber);
}
