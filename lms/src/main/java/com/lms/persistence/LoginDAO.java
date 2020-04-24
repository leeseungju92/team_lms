package com.lms.persistence;

import com.lms.domain.MemberDTO;

public interface LoginDAO {

	MemberDTO loginUser(MemberDTO mDto);

}
