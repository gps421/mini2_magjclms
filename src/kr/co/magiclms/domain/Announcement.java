package kr.co.magiclms.domain;

import java.util.Date;

public class Announcement {
	private int courseNo;
	private int annNo;
	private int professorNo;
	private Date regDate;
	private String title;
	private String content;
	private int viewCnt;
	public int getCourseNo() {
		return courseNo;
	}
	public void setCourseNo(int courseNo) {
		this.courseNo = courseNo;
	}
	public int getAnnNo() {
		return annNo;
	}
	public void setAnnNo(int annNo) {
		this.annNo = annNo;
	}
	public int getProfessorNo() {
		return professorNo;
	}
	public void setProfessorNo(int professorNo) {
		this.professorNo = professorNo;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getViewCnt() {
		return viewCnt;
	}
	public void setViewCnt(int viewCnt) {
		this.viewCnt = viewCnt;
	}
	@Override
	public String toString() {
		return "Announcement [courseNo=" + courseNo + ", annNo=" + annNo + ", professorNo=" + professorNo + ", regDate="
				+ regDate + ", title=" + title + ", content=" + content + ", viewCnt=" + viewCnt + "]";
	}
}
