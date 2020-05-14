package com.lms.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lms.domain.MemberDTO;
import com.lms.service.MemService;

import lombok.extern.slf4j.Slf4j;


@Controller
@Slf4j
public class MemController {
	@Autowired
	MemService mService;
	@GetMapping("/join")
	public String join() {
		return "member/join";
		
	}
	@PostMapping("/join")
	public String join(MemberDTO mDto) {
		
		mService.memInsert(mDto);
		return "redirect:/";
		
	}
	
	
}
