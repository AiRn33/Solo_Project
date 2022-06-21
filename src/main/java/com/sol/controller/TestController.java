package com.sol.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class TestController {

	@GetMapping("/test/test")
	public void test() {
		
		System.out.println("test Code get");
		
	}
	
	@GetMapping("/tiles/tiles-layout")
	public void layout() {
		System.out.println("test layout");
	}
	
	@GetMapping("/home/home")
	public void home() {
		System.out.println("home");
	}
}
