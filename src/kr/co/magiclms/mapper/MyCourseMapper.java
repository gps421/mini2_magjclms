package kr.co.magiclms.mapper;

import java.util.List;

import kr.co.magiclms.domain.MyCourse;

public interface MyCourseMapper {
	List<MyCourse> selectMyCourse(int studentNo);
	void insertMyCourse(MyCourse mycourse);
	void updateMyCourse(int studentNo);
	void deleteMyCourse(int studentNo);
}
