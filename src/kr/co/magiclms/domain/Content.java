package kr.co.magiclms.domain;

import java.util.Date;

public class Content {
	private int courseNo;
	private int contentNo;
	private int professorNo;
	private String title;
	private String ref;
	private int viewCnt;
	private Date regDate;
	private String filePath;
	private String sysName;
	private String origName;
	public int getCourseNo() {
		return courseNo;
	}
	public void setCourseNo(int courseNo) {
		this.courseNo = courseNo;
	}
	public int getContentNo() {
		return contentNo;
	}
	public void setContentNo(int contentNo) {
		this.contentNo = contentNo;
	}
	public int getProfessorNo() {
		return professorNo;
	}
	public void setProfessorNo(int professorNo) {
		this.professorNo = professorNo;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getRef() {
		return ref;
	}
	public void setRef(String ref) {
		this.ref = ref;
	}
	public int getViewCnt() {
		return viewCnt;
	}
	public void setViewCnt(int viewCnt) {
		this.viewCnt = viewCnt;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public String getFilePath() {
		return filePath;
	}
	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}
	public String getSysName() {
		return sysName;
	}
	public void setSysName(String sysName) {
		this.sysName = sysName;
	}
	public String getOrigName() {
		return origName;
	}
	public void setOrigName(String origName) {
		this.origName = origName;
	}
	@Override
	public String toString() {
		return "Content [courseNo=" + courseNo + ", contentNo=" + contentNo + ", professorNo=" + professorNo
				+ ", title=" + title + ", ref=" + ref + ", viewCnt=" + viewCnt + ", regDate=" + regDate + ", filePath="
				+ filePath + ", sysName=" + sysName + ", origName=" + origName + "]";
	}
	
}
