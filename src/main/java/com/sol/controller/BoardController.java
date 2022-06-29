package com.sol.controller;

import java.net.http.HttpResponse;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;

import com.sol.domain.BoardVO;
import com.sol.service.BoardServiceImpl;
import com.sol.service.MemberServiceImpl;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequiredArgsConstructor
@Log4j
public class BoardController {

	private final BoardServiceImpl mapper;
	private final MemberServiceImpl memberMapper;

	// 게시판 페이지 이동 GET
	@GetMapping("/board/list")
	public String listGet(Model model) {
		log.info("getList Start");

		List<BoardVO> list = mapper.list();
		model.addAttribute("list", list);

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

	// 글 생성 GET
	@GetMapping("/board/post")
	public String create_boardGet() {

		log.info("create_boart Get Start");
		return "/board/create_board";
	}

	// 글 생성 POST
	@PostMapping("/board/{sessionUserNumber}")
	public String create_boardPost(@PathVariable int sessionUserNumber, @RequestParam("title") String title,
			@RequestParam("content") String content, Model model) {

		log.info("create_boart Post Start");

		BoardVO vo = new BoardVO();

		vo.setUserNumber(sessionUserNumber);
		vo.setTitle(title);
		vo.setContent(content);
		vo.setName(memberMapper.memberName(sessionUserNumber));

		mapper.createBoard(vo);

		List<BoardVO> list = mapper.list();
		model.addAttribute("list", list);

		return "redirect:/board/list";
	}

	// 글 상세 조회
	@GetMapping("/board/post/{boardNumber}")
	public String getBoard(@PathVariable int boardNumber, Model model) {

		log.info("getBoard Start");

		BoardVO vo = mapper.getBoard(boardNumber);
		vo.setContent("\r\n" + vo.getContent());

		model.addAttribute("vo", vo);

		return "/board/get_board";
	}

	// 글 수정 폼 이동
	@GetMapping("/board/update/{boardNumber}")
	public String updateBoard(@PathVariable int boardNumber, Model model) {

		log.info("updateBoard Get Start");

		BoardVO vo = mapper.getBoard(boardNumber);

		model.addAttribute("vo", vo);

		return "/board/modify_board";
	}

	// 글 수정 실행
	@PutMapping("/board/post/{boardNumber}")
	public String modifyBoard(@PathVariable int boardNumber, @RequestParam String title, @RequestParam String content,
			Model model) {

		log.info("modifyBoard Start");

		BoardVO vo = new BoardVO();
		vo.setBoardNumber(boardNumber);
		vo.setTitle(title);
		vo.setContent(content);

		mapper.modifyBoard(vo);
		
		return "redirect:/board/post/" + boardNumber;
	}

	// 글 삭제 폼 이동
	@DeleteMapping("/board/post/{boardNumber}")
	public String deleteBoard(@PathVariable int boardNumber, Model model) {

		log.info("deleteBoard Get Start");
		
		
		int result = mapper.deleteBoard(boardNumber);

		System.out.println("result : " + result);
		return "redirect:/board/list";
	}

}
