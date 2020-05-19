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
public class BoardServiceImpl implements BoardService{
	
	@Autowired
	private SqlSession sqlSession;
	
	private BoardDAO bDao;
	
	@Autowired
	public void BoardListDAO() {
		bDao = sqlSession.getMapper(BoardDAO.class);
	}
	
	@Override
	public List<BoardDTO> boardList() {
		log.info("리스트 가져가");
		
		return bDao.boardList();
	}

	@Override
	public void boardRegister(BoardDTO bDto) {
		
		log.info(">>> 너가작성한거 서비스로 가져가");
		log.info(">>>> DAO 작동해" );
		
		
	}
	
}
