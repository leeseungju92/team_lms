package com.lms.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.extern.slf4j.Slf4j;


@Slf4j
@Controller
public class IndexController {
	@GetMapping("/")
	public String indexView(){
		
		log.info(">>>>> GET INDEX PAGE");
		return "index";		
	}
}
