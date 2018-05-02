package kr.co.magiclms.mapper;

import java.util.List;

import kr.co.magiclms.domain.Announcement;

public interface AnnouncementMapper {
	List<Announcement> selectAnnouncement(int professorNo);
	Announcement selectAnnouncementByAnnNo(int annNo);
	void insertAnnouncement(Announcement announcement);
	void updateAnnouncement(Announcement announcement);
	void updateAnnouncementViewCnt(int annNo);
	void deleteAnnouncement(int annNo);
}
