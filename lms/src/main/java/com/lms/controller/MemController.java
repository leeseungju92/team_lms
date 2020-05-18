package com.lms.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.lms.domain.MemberDTO;
import com.lms.service.MemService;

import lombok.extern.slf4j.Slf4j;


@Controller
@Slf4j
public class MemController {
	@Autowired
	MemService mService;
	
	@Autowired
	PasswordEncoder passwordEncoder;
	@GetMapping("/join_n")
	public String join() {
		return "member/join_n";
		
	}
	@PostMapping("/join_n")
	public String join(@ModelAttribute("memberDTO") MemberDTO mDto, SessionStatus sessionStatus, RedirectAttributes rttr) {
		log.info("===========회원가입 ");
		String encPw = passwordEncoder.encode(mDto.getPw());
		mDto.setPw(encPw);
		
		 mService.memInsert(mDto);
		 sessionStatus.setComplete();
		 
		
		
		
		return "redirect:/";
		
	
		
	}
	
	
}
