package kr.co.magiclms.mapper;

import java.util.List;

import kr.co.magiclms.domain.Comment;
import kr.co.magiclms.domain.Community;

public interface CommunityMapper {
	public List<Community> selectCmnt();
	public Community selectCmntByNo(int no);
	public void insertCmnt(Community cmnt);
	public void updateCmnt(Community cmnt);
	public void deleteCmnt(int no);
	public void updateCmntViewCnt(int no);
	
	void insertComment(Comment comment);
	List<Comment> selectCommentByNo(int findNo);
	void deleteComment(int commentNo);
	void updateComment(Comment comment);
}
