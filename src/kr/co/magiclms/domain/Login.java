package kr.co.magiclms.domain;

public class Login {
	private String memberID;
	private String pass;
	private int studentNo;
	private int professorNo;
	
	public String getMemberID() {
		return memberID;
	}
	public void setMemberID(String memberID) {
		this.memberID = memberID;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public int getStudentNo() {
		return studentNo;
	}
	public void setStudentNo(int studentNo) {
		this.studentNo = studentNo;
	}
	public int getProfessorNo() {
		return professorNo;
	}
	public void setProfessorNo(int professorNo) {
		this.professorNo = professorNo;
	}
	
	
}
