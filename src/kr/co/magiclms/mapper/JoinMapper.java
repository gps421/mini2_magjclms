package kr.co.magiclms.mapper;

import kr.co.magiclms.domain.Join;

public interface JoinMapper {
	public void memberJoin(Join join);
	public Join selectMemberById(String id);
	public int selectIdChk(String id);
	
}
