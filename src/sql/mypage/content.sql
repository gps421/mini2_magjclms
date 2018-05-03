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

--sample
insert into tb_content (
course_no, content_no, professor_no, title, ref, file_path, sys_name, orig_name 
) values (
1, s_content_no.nextval, 20185555, 'content1', 'content ref1', 'content filepath1', 'sys_name1', 'orig_name1'
);