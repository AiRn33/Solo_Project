package com.sol.domain;

import java.util.List;

import lombok.Data;

@Data
public class MemberVO {

	private int userNumber;
	private String name;
	private String email;
	private String password;
	private boolean enabled;
	private String phone;
	
	private List<AuthVO> authList;
}
