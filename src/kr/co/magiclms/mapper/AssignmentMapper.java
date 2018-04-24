package kr.co.magiclms.mapper;

import java.util.List;

import kr.co.magiclms.domain.Assignment;
import kr.co.magiclms.domain.AssignmentSubmit;


public interface AssignmentMapper {
	List<Assignment> selectAssignmentList(); // 과제 게시글 목록
	Assignment selectAssignmentByNo(int asgmtNo); // 과제 게시물 상세보기
	void insertAssignment(Assignment assignment); // 과제 등록(교수용)
	void updateAssignment(Assignment assignment); // 등록된 과제 수정(교수용) 
	void deleteAssignment(int asgmtNo); // 등록된 과제 삭제(교수용)
	void updateAssignmentViewCnt(int asgmtNo); // 등록된 과제 조회수
	
	void insertAssignmentSubmit(AssignmentSubmit assignmentSubmit); // 과제 제출(학생용)
	void updateAssignmentSubmit(AssignmentSubmit assignmentSubmit); // 제출한 과제 수정(학생용)
	void deleteAssignmentSubmit(int asgmtSubmitNo); // 제출한 과제 삭제(학생용)
	
	AssignmentSubmit selectAssignmentSubmitConfirm(AssignmentSubmit assignmentSubmit); // 과제 제출 후 확인 page
	List<AssignmentSubmit> selectAssignmentSubmitList(AssignmentSubmit assignmentSubmit); // 과제 제출 여부(교수용) 확인 page ~ xml (교수번호 where)
	void insertAssignmentGrade(AssignmentSubmit assignmentSubmit); // 과제 성적 부여(교수용)
}
