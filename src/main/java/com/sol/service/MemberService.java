package com.sol.service;

import org.springframework.stereotype.Service;

import com.sol.domain.MemberVO;

@Service
public interface MemberService {

	int joinMember(MemberVO vo);
	int idCheck(MemberVO vo);
	MemberVO read(String email);
	MemberVO userGet(String email);
	int joinMemberAuth(String email);
	int memberNumber(String email);
	String memberName(int userNumber);


}
