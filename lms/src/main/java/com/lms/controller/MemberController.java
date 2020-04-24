package com.lms.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.lms.domain.MemberDTO;
import com.lms.mail.MailService;
import com.lms.service.MemberService;

import lombok.extern.slf4j.Slf4j;
@SessionAttributes({"memberDTO"})
@Slf4j
@Controller
public class MemberController {
	@Autowired
	MemberService mService;
	@Autowired	
	PasswordEncoder passwordEncoder;
	@Autowired
	private MailService mailService;
	@ModelAttribute("memberDTO")
	public MemberDTO newMember(){
		return new MemberDTO();
	}
	@GetMapping("/login")
	public String loginPage(){
		return "member/login";
	}
	@GetMapping("/join")
	public String joinPage(){
		return "member/join";
	}
	@PostMapping("/join")
	public String joinpage(@ModelAttribute("memberDTO") MemberDTO mDto, SessionStatus sessionStatus, HttpServletRequest request, RedirectAttributes rttr) {
		log.info(">>>>>>>>> 멤바 쪼인 포스트 디비에 회원정보 저장");
		log.info(mDto.toString());
		log.info("Password:"+mDto.getPw());
		String encPw= passwordEncoder.encode(mDto.getPw());
		mDto.setPw(encPw);
		log.info("password(+Hash):" +mDto.getPw());
		int result = mService.memInsert(mDto);
		if(result>0) {
			log.info(">>>>>>"+mDto.getId()+"님 회원가입되셨습니다.");
		}
		
		
		mailService.mailSendUser(mDto.getId(), mDto.getId(), request);
		/*
		 * 세션어트리뷰트를 사용할때 , 인서트, 업데이트가 완료되고 뷰로 보내기전 반드시
		 * 셋컴플리트를 실행하여 세션에 담긴값을 클리어 해주어야한다.
		 */
		
		sessionStatus.setComplete();
		
		rttr.addFlashAttribute("id", mDto.getId());
		rttr.addFlashAttribute("email", mDto.getId());
		rttr.addFlashAttribute("key", "join");
		
		return "redirect:/";
	}
	@GetMapping("/member/keyauth")
	public String keyAuth(String id, String key, RedirectAttributes rttr) {
		mailService.keyAuth(id, key);
		rttr.addFlashAttribute("id",id);
		rttr.addFlashAttribute("key", "auth");
		return "redirect:/";
	}
	@ResponseBody
	@PostMapping("/idoverlap")
	public String idOverlap(String id) {
		log.info(">>>> ID OVERLAP CHECK");
		log.info("아이디:"+id);
		
		int cnt = mService.idOverlap(id);
		String flag = "1";
		if(cnt==0) {
			flag="0";
		}
		return flag;
	}
	
}
