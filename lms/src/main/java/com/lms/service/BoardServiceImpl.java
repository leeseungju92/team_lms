package com.lms.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lms.domain.BoardDTO;
import com.lms.persistence.BoardDAO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class BoardServiceImpl implements BoardService {
	
	@Autowired
	private SqlSession sqlSession;

	private BoardDAO bDao;
	
	@Autowired
	public void boardlistDAO() {
		bDao = sqlSession.getMapper(BoardDAO.class);
	}
	
	@Override
	public List<BoardDTO> boardlist() {
		
		log.info("게시판 리스트 가지고가");
		return bDao.boardList();
	}
	
	@Override
	public void boardRegister(BoardDTO bDto) {
		log.info("매퍼가서 boardRegister 실행시켜");
		bDao.boardRegister(bDto);
		
	}
	
}
