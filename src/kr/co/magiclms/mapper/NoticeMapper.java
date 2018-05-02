package kr.co.magiclms.mapper;

import java.util.List;

import kr.co.magiclms.domain.Notice;

public interface NoticeMapper {
	public List<Notice> selectNotice();
	public Notice selectNoticeByNo();
	public void insertNotice(Notice notice);
	public void updateNotice(Notice notice);
	public void deleteNotice(int no);
	
}
