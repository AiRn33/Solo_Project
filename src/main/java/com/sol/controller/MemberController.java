package com.sol.controller;

import java.io.IOException;


import javax.servlet.http.HttpServletResponse;

import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.sol.domain.MemberVO;
import com.sol.service.MemberServiceImpl;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequiredArgsConstructor
@Log4j
public class MemberController {

	private final MemberServiceImpl mapper; 
	private final PasswordEncoder passwordEncoder;
	
	//  메인 페이지 Get
	@GetMapping("/main/home")
	public String home() {
		log.info("main home Start");
		return "/main/home";
	}
	
	//	회원가입 post
	@PostMapping("/member/joinProc")
	public String joinProc(@ModelAttribute MemberVO mvo, Model model, HttpServletResponse response) throws IOException {
		
		log.info("member joinProc Start");
		
		MemberVO vo = mvo;
		
		vo.setPassword(passwordEncoder.encode(mvo.getPassword()));
		
		int result = mapper.joinMember(vo);
		if(result == 1) {
			mapper.joinMemberAuth(vo.getEmail());
			log.info(vo.getEmail()+"회원가입 완료");
		}
				
		return "redirect:/main/home";
	}
	
	// 로그인 get
	@GetMapping("/member/login")
	public String loginGet() {
		
		log.info("member login Get Start");
		return "/member/login";
	}
	
	// 로그인 post
	@PostMapping("/member/login")
	public String loginPost() {
		log.info("member login Post Start");
		return "/member/login";
	}
	
	// 로그인 post
	@PostMapping("/login")
	public void login() {
		log.info("login Post Start");
	}

	// 아이디 중복 체크 post ajax
	@PostMapping("/member/idCheck")
	@ResponseBody  // ajax로 데이터를 보내주기 위해서 무조건 필요함
	public int idCheck(@RequestParam String email) {
		
		log.info("member idCheck Start");

		MemberVO vo = new MemberVO();
		vo.setEmail(email.replace(",", ""));
		int num = mapper.idCheck(vo);
		
		return num;
	}
	
	// 로그아웃 컨트롤러
	@GetMapping("/member/logout")
	public String logoutGet() {
		log.info("logout get Start");
		return "/member/logout";
	}
	
	// 로그아웃 컨트롤러
	@PostMapping("/member/logout")
	public String logoutPost() {
		log.info("logout post Start");
		return "/main/home";
	}
	
	@GetMapping("/member/myPage")
	public String myPageGet(@SessionAttribute("sessionUserNumber") String userNumber,Model model) {
		
		log.info("myPage Get Start");
		MemberVO vo = new MemberVO();
		vo = mapper.userGet(userNumber);
		
		model.addAttribute("vo", vo);
		log.info("전달할 페이지 내용 : " + vo);
		
		return "/member/myPage";
	}
}
