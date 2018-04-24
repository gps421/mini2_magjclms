package kr.co.magiclms.domain;

import java.util.Date;

public class AssignmentSubmit {
	private int asgmtSubmitNo;
	private int studentNo;
	private int courseNo;
	private String filePath;
	private String sysName;
	private String origName;
	private Date submitDate;
	private int asgmtGrade;
	public int getAsgmtSubmitNo() {
		return asgmtSubmitNo;
	}
	public void setAsgmtSubmitNo(int asgmtSubmitNo) {
		this.asgmtSubmitNo = asgmtSubmitNo;
	}
	public int getStudentNo() {
		return studentNo;
	}
	public void setStudentNo(int studentNo) {
		this.studentNo = studentNo;
	}
	public int getCourseNo() {
		return courseNo;
	}
	public void setCourseNo(int courseNo) {
		this.courseNo = courseNo;
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
	public Date getSubmitDate() {
		return submitDate;
	}
	public void setSubmitDate(Date submitDate) {
		this.submitDate = submitDate;
	}
	public int getAsgmtGrade() {
		return asgmtGrade;
	}
	public void setAsgmtGrade(int asgmtGrade) {
		this.asgmtGrade = asgmtGrade;
	}
	@Override
	public String toString() {
		return "AssignmentSubmit [asgmtSubmitNo=" + asgmtSubmitNo + ", studentNo=" + studentNo + ", courseNo="
				+ courseNo + ", filePath=" + filePath + ", sysName=" + sysName + ", origName=" + origName
				+ ", submitDate=" + submitDate + ", asgmtGrade=" + asgmtGrade + "]";
	}

	
	
}
