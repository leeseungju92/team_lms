package com.lms.service;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lms.domain.MemberDTO;
import com.lms.persistence.MemberDAO;

@Service
public class MemberServiceImpl implements MemberService{
	@Autowired
	SqlSession sqlSession;		
	MemberDAO mDao;
	@Autowired
	public void newMemberDAO() {
		mDao = sqlSession.getMapper(MemberDAO.class);
	}
	
	@Override
	public int memInsert(MemberDTO mDto) {
		return mDao.memInsert(mDto);
		
		
	}

	@Override
	public int idOverlap(String id) {
		// TODO Auto-generated method stub
		return mDao.idOverlap(id);
	}
	
}
