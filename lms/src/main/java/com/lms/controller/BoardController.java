package com.lms.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/board")
public class BoardController {
	
	@GetMapping("/list")
	public String boardlist() {
		
		log.info(">>>>> GET BoardList page");
		return "board/list";
	}
}
