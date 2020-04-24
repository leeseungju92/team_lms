package com.lms.service;

import com.lms.domain.MemberDTO;

public interface MemberService {
	public int memInsert(MemberDTO mDto);

	public int idOverlap(String id);
}
