package com.sol.service;

import org.springframework.stereotype.Service;

import com.sol.domain.MemberVO;
import com.sol.mapper.MemberMapper;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class MemberServiceImpl implements MemberService {

	private final MemberMapper mapper;
	
	// 회원가입	 
	public int joinMember(MemberVO vo) {

		return mapper.joinMember(vo);
	}
	
	// 아이디 중복확인
	public int idCheck(MemberVO vo) {
		
		return mapper.idCheck(vo);
	}

	@Override
	public MemberVO read(String email) {
		return mapper.read(email);
	}

	@Override
	public MemberVO userGet(String email) {
		return mapper.userGet(email);
	}

}
