package kr.co.magiclms.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kr.co.magiclms.domain.Announcement;

public interface AnnouncementMapper {
	List<Announcement> selectAnnouncement(int professorNo);
	Announcement selectAnnouncementByAnnNo(Announcement announcement);
	void insertAnnouncement(Announcement announcement);
	void updateAnnouncement(Announcement announcement);
	void updateAnnouncementViewCnt(Announcement announcement);
	void deleteAnnouncement(Announcement announcement);
}
