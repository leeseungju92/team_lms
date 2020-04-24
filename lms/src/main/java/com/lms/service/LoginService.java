package com.lms.service;

import javax.servlet.http.HttpSession;

import com.lms.domain.MemberDTO;

public interface LoginService {

	public int login(MemberDTO mDto, HttpSession session);

}
