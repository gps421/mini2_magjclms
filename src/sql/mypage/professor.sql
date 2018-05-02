create table tb_professor (
member_id varchar2(30),
professor_no number(10) primary key,
course_no number(3)
);

select m.member_id, p.professor_no, p.course_no
from tb_professor p 
inner join tb_member m
on p.member_id = m.member_id;


select * from tb_member;
select * from tb_professor;

insert into tb_professor(
member_id, professor_no, course_no
) values (
'pro1', 20185555, 001
);