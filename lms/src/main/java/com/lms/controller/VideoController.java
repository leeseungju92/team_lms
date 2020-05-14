package com.lms.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;


@Slf4j
@Controller
@RequestMapping("/video")
public class VideoController {
	
	@GetMapping("/list")
	public String videolist() {
		
		
		log.info(">>>>> GET videolist page");
		return "video/list";
	}
	
	@GetMapping("/videoclass")
	public String videoclass() {
		return "video/videoclass";
		
	}
	
}
