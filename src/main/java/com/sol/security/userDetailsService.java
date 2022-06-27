package com.sol.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.sol.domain.MemberVO;
import com.sol.mapper.MemberMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
public class userDetailsService implements UserDetailsService{

	@Setter(onMethod_ = {@Autowired})
	private MemberMapper mapper;
	
	public userDetailsService() {

	}
	
	@Override
	public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {

		log.warn("유저 이름 : " + email);
		
		MemberVO vo = mapper.read(email);
		
		log.warn("mapper : " + vo);
		
		return vo == null ? null : new CustomUser(vo);
	}

}
