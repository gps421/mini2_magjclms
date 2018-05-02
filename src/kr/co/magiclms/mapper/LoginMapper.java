package kr.co.magiclms.mapper;

import kr.co.magiclms.domain.Login;

public interface LoginMapper {
	Login selectMemberById(String id);
}
