package kr.co.magiclms.mapper;

import java.util.List;

import kr.co.magiclms.domain.Student;

public interface StudentMapper {
	Student selectStudentByStudentNo(int studentNo);
	void insertStudentInfo(Student student); // 학생 프로필 사진, 성적??
	void updateStudentInfo(int studentNo); 
	void deleteStudentInfo(int studentNo);
}
