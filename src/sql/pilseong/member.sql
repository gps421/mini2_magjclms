CREATE TABLE TB_MEMBER
(
    member_id      VARCHAR2(30)     NULL, 
    user_name      VARCHAR2(30)     NULL, 
    birth_date     NUMBER(8)        NULL, 
    pass           VARCHAR2(30)     NULL, 
    pw_hint        VARCHAR2(30)     NULL, 
    email          VARCHAR2(50)     NULL, 
    phone_no       VARCHAR2(11)     NULL, 
    addr           VARCHAR2(100)    NULL, 
    post_code      NUMBER(5)        NULL,
    dormitory      VARCHAR2(30)     NULL,
    grade          NUMBER(1)        NULL, 
    member_type    VARCHAR2(3)          NULL, 
    CONSTRAINT TB_MEMBER_PK PRIMARY KEY (member_id)
);

alter table tb_member add(studnt_no varchar2(30));
alter table tb_member add(professor_no number(30));


insert into tb_professor (
  member_id, professor_no, course_no, pass
) values (
  'Hooch', 20185000, 1, 1111
);

insert into tb_professor (
  member_id, professor_no, course_no, pass
) values (
  'Filius', 20185001, 2, 2222
);

insert into tb_professor (
  member_id, professor_no, course_no, pass
) values (
  'Horace', 20185002, 3, 3333
);

insert into tb_professor (
  member_id, professor_no, course_no, pass
) values (
  'Minerva', 20185003, 4, 4444
);

insert into tb_professor (
  member_id, professor_no, course_no, pass
) values (
  'Aurora', 20185004, 5, 5555
);

insert into tb_professor (
  member_id, professor_no, course_no, pass
) values (
  'Pomona', 20185005, 6, 6666
);

insert into tb_professor (
  member_id, professor_no, course_no, pass
) values (
  'Vector', 20185006, 7, 7777
);

insert into tb_professor (
  member_id, professor_no, course_no, pass
) values (
  'admin', 20185007, 8, 8888
);

insert into tb_professor (
  member_id, professor_no, course_no, pass
) values (
  'test', 20185008, 9, 9999
);

commit;