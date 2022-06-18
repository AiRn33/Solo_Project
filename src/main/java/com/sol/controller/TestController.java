package com.sol.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class TestController {

	@PostMapping("/test/one")
	public void test(@RequestParam String name, @RequestParam String email, @RequestParam String phone) {
		
		System.out.println("test Code Post");
		System.out.println("name : " + name);
		System.out.println("email : " + email);
		System.out.println("phone : " + phone);
		
	}
	
	@GetMapping("/test/one")
	public void test1() {
		System.out.println("test Code Get ");
		
	}
}
