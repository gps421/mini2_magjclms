package kr.co.magiclms.domain;

import java.util.Date;

public class QnA {
	private int qnaNo;
	private int courseNo;
	private String memberID;
	private String title;
	private String content;
	private Date regDate;
	public int getQnaNo() {
		return qnaNo;
	}
	public void setQnaNo(int qnaNo) {
		this.qnaNo = qnaNo;
	}
	public int getCourseNo() {
		return courseNo;
	}
	public void setCourseNo(int courseNo) {
		this.courseNo = courseNo;
	}
	public String getMemberID() {
		return memberID;
	}
	public void setMemberID(String memberID) {
		this.memberID = memberID;
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
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	@Override
	public String toString() {
		return "QnA [qnaNo=" + qnaNo + ", courseNo=" + courseNo + ", memberID=" + memberID + ", title=" + title
				+ ", content=" + content + ", regDate=" + regDate + "]";
	}
}
