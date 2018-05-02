create table tb_announcement (
course_no number(3),
ann_no number(3) primary key,
professor_no number(10),
reg_date date default sysdate,
title varchar2(30),
content varchar2(4000),
view_cnt number(3) default 0
);

--drop table tb_announcement;

select * from tb_announcement;
select * from tb_professor;
select * from tb_courselist;

create sequence s_announcement_ann_no;
--drop sequence s_announcement_ann_no;

--sample
--insert into tb_announcement (
--course_no, ann_no, professor_no, title, content
--) values (
--1, s_announcement_ann_no.nextval, 11111111, 'title1', 'ann content1'
--);

select a.course_no, a.ann_no, a.professor_no, a.reg_date, a.title, a.content, a.view_cnt
from tb_announcement a
inner join tb_professor p
on a.professor_no = p.professor_no
inner join tb_courselist c
on p.course_no = c.course_no
order by ann_no;

--create table tb_courselist (
--course_no number(3) primary key,
--name varchar2(30),
--professor_no number(10),
--time varchar2(30),
--room varchar2(30),
--course_desc varchar2(4000)
--);

--create table tb_professor (
--member_id varchar2(30),
--professor_no number(10) primary key,
--course_no number(3)
--);

select *
	from tb_annoucement a
	inner join tb_professor p
	on a.professor_no = p.professor_no
	inner join tb_courselist c
	on p.course_no = c.course_no
	where a.professor_no = 11111111
	order by ann_no;

