create table tb_courselist (
course_no number(3) primary key,
name varchar2(30),
professor_no number(10),
time varchar2(30),
room varchar2(30),
course_desc varchar2(4000)
);

select * from tb_courselist;
