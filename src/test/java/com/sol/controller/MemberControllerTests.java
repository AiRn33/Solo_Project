package com.sol.controller;

import static org.junit.Assert.assertEquals;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class MemberControllerTests {
	
	
	@Autowired
	private MemberController testController;
	
	
	@Test
	public void test() throws Exception{
		String main = "/main/home";
		
		log.info("------------------------");
		log.info("Controller getHome 테스트");
		assertEquals(testController.home(), main);
		log.info("------------------------");
	}
}
