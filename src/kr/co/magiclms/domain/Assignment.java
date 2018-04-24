package kr.co.magiclms.domain;

import java.util.Date;

public class Assignment {
	private int asgmtNo;
	private int courseNo;
	private int studentNo;
	private String title;
	private Date deadline;
	private Date regDate;
	private int viewCnt;
	private int professorNo;
	
	public int getProfessorNo() {
		return professorNo;
	}
	public void setProfessorNo(int professorNo) {
		this.professorNo = professorNo;
	}
	public int getAsgmtNo() {
		return asgmtNo;
	}
	public void setAsgmtNo(int asgmtNo) {
		this.asgmtNo = asgmtNo;
	}
	public int getCourseNo() {
		return courseNo;
	}
	public void setCourseNo(int courseNo) {
		this.courseNo = courseNo;
	}
	public int getStudentNo() {
		return studentNo;
	}
	public void setStudentNo(int studentNo) {
		this.studentNo = studentNo;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Date getDeadline() {
		return deadline;
	}
	public void setDeadline(Date deadline) {
		this.deadline = deadline;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public int getViewCnt() {
		return viewCnt;
	}
	public void setViewCnt(int viewCnt) {
		this.viewCnt = viewCnt;
	}

	
}