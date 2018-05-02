package kr.co.magiclms.mapper;

import java.util.List;

import kr.co.magiclms.domain.Professor;

public interface ProfessorMapper {
	List<Professor> selectProfessor();
	void insertProfessor(Professor professor);
}
