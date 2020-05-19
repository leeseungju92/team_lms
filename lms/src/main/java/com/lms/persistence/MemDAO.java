package com.lms.persistence;

import com.lms.domain.MemberDTO;

public interface MemDAO {

	public void memInsert(MemberDTO mDto);

	public int idoverlap_n(String id);

	public void getKey(String id, String key);

	public int keyAuth(String id, String key);

	public int alterKey(String id, String key);

}
