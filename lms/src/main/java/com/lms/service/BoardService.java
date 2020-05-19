package com.lms.service;

import java.util.List;

import com.lms.domain.BoardDTO;


public interface BoardService {
	
	public List<BoardDTO> boardList();
	
	public void boardRegister(BoardDTO bDto);
}
