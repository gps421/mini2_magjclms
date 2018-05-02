package kr.co.magiclms.mapper;

import java.util.List;

import kr.co.magiclms.domain.Community;
import kr.co.magiclms.domain.Notice;

public interface CommunityMapper {
	public List<Notice> selectCmnt();
	public Notice selectCmntByNo();
	public void insertCmnt(Community cmnt);
	public void updateCnmnt(Community cmnt);
	public void deleteCmnt(int no);
	
}
