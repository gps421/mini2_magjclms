create table tb_content (
course_no number(3),
content_no number(3) primary key,
professor_no number(10),
title varchar2(30),
ref varchar2(100),
view_cnt number(3) default 0,
reg_date date default sysdate,
file_path varchar2(100),
sys_name varchar2(50),
orig_name varchar2(50)
);

create sequence s_content_no;

select * from tb_content;