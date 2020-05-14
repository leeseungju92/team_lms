package com.lms.service;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lms.domain.MemberDTO;
import com.lms.persistence.MemDAO;
@Service
public class MemServiceImpl implements MemService{
	@Autowired
	SqlSession sqlSession;
	MemDAO mDao;
	
	@Autowired
	public void newMDAO(){
		mDao = sqlSession.getMapper(MemDAO.class);
	}
	@Override
	public void memInsert(MemberDTO mDto) {
		// TODO Auto-generated method stub
		mDao.memInsert(mDto);
	}

}
