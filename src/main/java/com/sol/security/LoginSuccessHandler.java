package com.sol.security;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

import com.sol.mapper.MemberMapper;

import lombok.extern.log4j.Log4j;

@Log4j
public class LoginSuccessHandler implements AuthenticationSuccessHandler{
	
	@Autowired
	private MemberMapper mapper;
	
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			 Authentication auth) throws IOException, ServletException {

		HttpSession session = request.getSession();
		
		
		log.warn("Login Success");
	
		
		
		List<String> roleNames = new ArrayList<>();
		
		auth.getAuthorities().forEach(authority ->{
		
			roleNames.add(authority.getAuthority());
			
		});
		
		log.warn("ROLE NAMES : " + roleNames);
		
		if(roleNames.contains("ROLE_MEMBER")) {
			log.warn("member 입니다");
			int userNumber = mapper.memberNumber(auth.getName());
			session.setAttribute("sessionUserNumber", userNumber);
			response.sendRedirect("/");
			return;
		}else {
			log.warn("error가 발생했습니다");
			response.sendRedirect("/board/accessError");
			return;
		}
		
	}

}
