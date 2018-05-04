package kr.co.magiclms.domain;

public class MyCourse {
	private int studentNo;
	private int courseNo;
	private int grade;
	private int professorNo;
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
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	public int getProfessorNo() {
		return professorNo;
	}
	public void setProfessorNo(int professorNo) {
		this.professorNo = professorNo;
	}
	@Override
	public String toString() {
		return "MyCourse [studentNo=" + studentNo + ", courseNo=" + courseNo + ", grade=" + grade + ", professorNo="
				+ professorNo + "]";
	}
}
