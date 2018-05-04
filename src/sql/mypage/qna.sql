create table tb_qna (
	qna_no number(3) primary key,
	course_no number(3),
	member_id varchar2(30),
	title varchar2(30),
	content varchar2(4000),
	reg_date date default sysdate
);

create sequence s_qna_no;
drop sequence s_qna_no;
drop table tb_qna;
select * from tb_qna;

select * from tb_member;
select * from tb_student;
insert into tb_student (member_id, student_no, pic, total_grade) values('ps', 11111111, 'pic1', 1);


--sample 
insert into tb_qna ( 
qna_no, course_no, member_id, title, content
) values( 
s_qna_no.nextval, 1, 'ps', 'Q1', 'A1'
);