package com.lms.persistence;

import java.util.List;

import com.lms.domain.BoardDTO;

public interface BoardDAO {

	public List<BoardDTO> boardList();
	
	public void boardRegister(BoardDTO bDto);
	
}
