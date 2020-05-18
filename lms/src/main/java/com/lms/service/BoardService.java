package com.lms.service;

import java.util.List;

import com.lms.domain.BoardDTO;



public interface BoardService {
	
	public List<BoardDTO> boardlist();
		
	public void boardRegister(BoardDTO bDto);
}
