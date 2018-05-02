package kr.co.magiclms.domain;

public class Professor {
	private String memberID;
	private int courseNo;
	private int professorNo;
	public String getMemberID() {
		return memberID;
	}
	public void setMemberID(String memberID) {
		this.memberID = memberID;
	}
	public int getCourseNo() {
		return courseNo;
	}
	public void setCourseNo(int courseNo) {
		this.courseNo = courseNo;
	}
	public int getProfessorNo() {
		return professorNo;
	}
	public void setProfessorNo(int professorNo) {
		this.professorNo = professorNo;
	}
	@Override
	public String toString() {
		return "Professor [memberID=" + memberID + ", courseNo=" + courseNo + ", professorNo=" + professorNo + "]";
	}
	
	
}
