package com.lms.service;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.lms.persistence.LoginDAO;

import lombok.extern.slf4j.Slf4j;

import com.lms.domain.MemberDTO;
@Slf4j
@Service
public class LoginServiceImpl implements LoginService {
	@Autowired
	PasswordEncoder passwordEncoder;
	@Autowired
	private SqlSession sqlSession;
	
	private LoginDAO lDao;
	
	@Autowired
	public void newMemberDAO() {
		lDao = sqlSession.getMapper(LoginDAO.class);
	}
	
	@Override
	public int login(MemberDTO mDto, HttpSession session) {
		MemberDTO loginDto = lDao.loginUser(mDto);
		log.info("*******************************************결과");
		int result =0;
		
		if(loginDto==null) {
			result = 0;
			return result;
		}		
		if(!(loginDto.getUseyn().equals("y")||loginDto.getUseyn().equals("d"))){
			result = 2;
			return result;
		}
		if(loginDto.getUseyn().equals("d")){
			result = 4;
			return result;
		}
		if(loginDto != null) {
			if(passwordEncoder.matches(mDto.getPw(), loginDto.getPw())) {
				result = 1;
				session.removeAttribute("userid");				
				session.setAttribute("userid", loginDto.getId());				
				
				
			}else {
				
				result = 3;
			}
		}
		return result;
	}

	@Override
	public void logout(HttpSession session) {
		// TODO Auto-generated method stub
		session.invalidate();
	}

}
