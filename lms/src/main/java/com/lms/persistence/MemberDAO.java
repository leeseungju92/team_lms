package com.lms.persistence;

import com.lms.domain.MemberDTO;

public interface MemberDAO {

	public void getKey(String id, String key);

	public int alterKey(String id, String key);

	public int memInsert(MemberDTO mDto);

	public int idOverlap(String id);

}
