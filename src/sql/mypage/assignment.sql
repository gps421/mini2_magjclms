create table tb_assignment (
asgmt_no number(3) primary key,
course_no number(3),
student_no number(10),
title varchar2(30),
deadline date,
reg_date date default sysdate,
view_cnt number(3)
);

create table tb_assignment_submit (
asgmt_submit_no number(3) primary key,
student_no number(10),
course_no number(3),
file_path varchar2(100),
sys_name varchar2(50),
orig_name varchar2(50),
submit_date date default sysdate,
asgmt_grade number(3)
);

select * from tb_assignment;
desc tb_assignment;
select * from tb_assignment_submit;

create sequence s_asgmt_no;

create sequence s_asgmt_submit_no;

select * from user_sequences;


insert into tb_assignment(
asgmt_no, course_no, student_no, title, deadline
) values( 
s_asgmt_no.nextval, 1, 11111111, 'ENGLISH', DATE '2018-05-17'
);