package kr.co.magiclms.domain;

import java.util.Date;

public class Notice {
	private int no;
	private String title;
	private String content;
	private Date regDate;
	public int getNo() {
		return no;
	}
	public void setNo(int No) {
		this.no = No;
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
}
