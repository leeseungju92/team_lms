package com.lms.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lms.domain.BoardDTO;
import com.lms.service.BoardService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/board")
public class BoardController {
	
	@Autowired
	BoardService bService;
	
	@GetMapping("/list")
	public String boardlist(Model model) {
		
		List<BoardDTO> list = bService.boardlist();
		model.addAttribute("list", list);
		
		log.info(">>>>> GET BoardList page");
		return "board/list";
	}
	
	@GetMapping("/register")
	public String boardregister() {
		log.info(">>>>> GET Board Regsiter Page");
		return "board/register";
	}
	
	@PostMapping("/register")
	public String boardregister(BoardDTO bDto) {
		log.info(">>>>> 게시판글쓰기 등록~");
		log.info(bDto.toString());
		
		
		bService.boardRegister(bDto);
		return "board/list";
	}
	
}
