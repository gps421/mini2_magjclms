create table tb_student (
	member_id varchar2(30),
	student_no number(10) primary key,
	pic varchar2(100),
	total_grade numeric(3,2)
);

select * from tb_student;