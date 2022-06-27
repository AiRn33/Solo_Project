package com.sol.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.sol.service.MemberServiceImpl;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequiredArgsConstructor
@Log4j
public class BoardController {

	private final MemberServiceImpl mapper; 

	// 게시판 페이지 이동 GET
	@GetMapping("/board/list")
	public String listGet() {
		log.info("getList Start");
		return "/board/list";
	}
	
	// 에러 페이지 이동 GET
	@GetMapping("/board/accessError")
	public String errorGet() {
		log.info("getAccessError Start");
		return "/board/accessError";
	}
	
	// 글 조회 GET
	@GetMapping("/board/get_board")
	public String get_boardGet() {
		log.info("getBoard Start");
		return "/board/get_board";
	}
	
}
