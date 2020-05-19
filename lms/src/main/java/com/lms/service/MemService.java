package com.lms.service;

import com.lms.domain.MemberDTO;

public interface MemService {

	public void memInsert(MemberDTO mDto);
	
	public int idoverlap_n(String id);

}
