package kr.co.magiclms.domain;

public class CourseList {
	private int courseNo;
	private String name;
	private int professorNo;
	private String time;
	private String room;
	private String courseDesc;
	public int getCourseNo() {
		return courseNo;
	}
	public void setCourseNo(int courseNo) {
		this.courseNo = courseNo;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getProfessorNo() {
		return professorNo;
	}
	public void setProfessorNo(int professorNo) {
		this.professorNo = professorNo;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getRoom() {
		return room;
	}
	public void setRoom(String room) {
		this.room = room;
	}
	public String getCourseDesc() {
		return courseDesc;
	}
	public void setCourseDesc(String courseDesc) {
		this.courseDesc = courseDesc;
	}
	@Override
	public String toString() {
		return "CourseList [courseNo=" + courseNo + ", name=" + name + ", professorNo=" + professorNo + ", time=" + time
				+ ", room=" + room + ", courseDesc=" + courseDesc + "]";
	}

}
