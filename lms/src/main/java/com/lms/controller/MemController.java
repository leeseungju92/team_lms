package com.lms.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.lms.domain.MemberDTO;
import com.lms.mail.MailService;
import com.lms.mail.MailService_n;
import com.lms.service.MemService;

import lombok.extern.slf4j.Slf4j;


@Controller
@Slf4j
public class MemController {
	@Autowired
	MemService mService;	
	@Autowired
	PasswordEncoder passwordEncoder;
	@Autowired
	MailService_n mailService_n;
	@GetMapping("/join_n")
	public String join() {
		return "member/join_n";
		
	}
	@PostMapping("/join_n")
	public String join(@ModelAttribute("memberDTO") MemberDTO mDto, SessionStatus sessionStatus, HttpServletRequest request, RedirectAttributes rttr) {
		log.info("===========회원가입 ");
		String encPw = passwordEncoder.encode(mDto.getPw());
		mDto.setPw(encPw);		
		mService.memInsert(mDto);	
		
		mailService_n.mailSendUser(mDto.getId(), request);
		
		rttr.addFlashAttribute("id", mDto.getId());
		rttr.addFlashAttribute("email", mDto.getId());
		rttr.addFlashAttribute("key", "join");
				
		return "redirect:/";		
	}
	
	@GetMapping("/member/keyauth")//
	public String keyAuth(String id, String key, RedirectAttributes rttr) {
		mailService_n.keyAuth(id, key);
		rttr.addFlashAttribute("id",id);
		rttr.addFlashAttribute("key", "auth");
		return "redirect:/";
	}
	
	@ResponseBody
	@PostMapping("idoverlap_n")
	public int idoverlap_n(String id) {
		
		
		return mService.idoverlap_n(id);
		
	}
}
