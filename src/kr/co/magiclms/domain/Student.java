package kr.co.magiclms.domain;

public class Student {
	private String memberId;
	private int studentNo;
	private String pic;
	private int totalGrade;
	
	private String name;
	private int birthDate;
	private String email;
	private int phoneNo;
	private String addr;
	private String postCode;
	private String dormitory;
	private int year;
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public int getStudentNo() {
		return studentNo;
	}
	public void setStudentNo(int studentNo) {
		this.studentNo = studentNo;
	}
	public String getPic() {
		return pic;
	}
	public void setPic(String pic) {
		this.pic = pic;
	}
	public int getTotalGrade() {
		return totalGrade;
	}
	public void setTotalGrade(int totalGrade) {
		this.totalGrade = totalGrade;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getBirthDate() {
		return birthDate;
	}
	public void setBirthDate(int birthDate) {
		this.birthDate = birthDate;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getPhoneNo() {
		return phoneNo;
	}
	public void setPhoneNo(int phoneNo) {
		this.phoneNo = phoneNo;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getPostCode() {
		return postCode;
	}
	public void setPostCode(String postCode) {
		this.postCode = postCode;
	}
	public String getDormitory() {
		return dormitory;
	}
	public void setDormitory(String dormitory) {
		this.dormitory = dormitory;
	}
	public int getYear() {
		return year;
	}
	public void setYear(int year) {
		this.year = year;
	}
	@Override
	public String toString() {
		return "Student [memberId=" + memberId + ", studentNo=" + studentNo + ", pic=" + pic + ", totalGrade="
				+ totalGrade + ", name=" + name + ", birthDate=" + birthDate + ", email=" + email + ", phoneNo="
				+ phoneNo + ", addr=" + addr + ", postCode=" + postCode + ", dormitory=" + dormitory + ", year=" + year
				+ "]";
	}

}
