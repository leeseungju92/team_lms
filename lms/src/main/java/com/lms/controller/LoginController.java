package com.lms.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lms.domain.MemberDTO;
import com.lms.service.LoginService;
import com.lms.controller.LoginController;

import lombok.extern.slf4j.Slf4j;
@RequestMapping("/login")
@Slf4j
@Controller
public class LoginController {
	@Autowired
	LoginService lService;
	
	@GetMapping("/")
	public String loginView() {
		return "/member/login";
	}
	@ResponseBody
	@PostMapping("/in")
	public Integer logIn(MemberDTO mDto, HttpSession session) {
		log.info(">>>>>>>>>>POST : LOGIN/ LOGIN ACTION");
		log.info(mDto.toString());		 
		int result = lService.login(mDto, session);
		log.info("결과는~~~~~"+ result);
		return result;
	}
	

//	@PostMapping("/out")
//	public void logOut(HttpSession session) {
//		log.info(">>>>>>>>>>POST : LOGOUT/ LOGOUT ACTION");
//		lService.logout(session);
//	}
}
