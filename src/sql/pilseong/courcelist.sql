CREATE TABLE tb_courselist
(
    course_no       NUMBER(3)         NOT NULL, 
    name            VARCHAR2(30)      NULL, 
    professor_no    NUMBER(10)        NULL, 
    time            VARCHAR2(30)      NULL, 
    room            VARCHAR2(30)      NULL, 
    course_desc     VARCHAR2(4000)    NULL, 
    CONSTRAINT TB_COURSELIST_PK PRIMARY KEY (course_no)
);


select *
from tb_courselist;

insert into tb_courselist (
course_no, name, professor_no, time, room, course_desc, pro_name
) values (
1, '마법Charms',  '20185000', 3, 'A', '일반적인 마법이나 지팡이 동작, 주문의 억양이나 발음 등을 공부하는 과목이다.', 'Madame Hooch'
);

insert into tb_courselist (
course_no, name, professor_no, time, room, course_desc, pro_name
) values (
2, '마법의약 Potions',  '20185001', 3, 'B', '다양한 레시피와 마법 재료를 이용해 마법의 약을 제조하는 방법을 공부하는 과목이다', 'Filius Flitwick'
);

insert into tb_courselist (
course_no, name, professor_no, time, room, course_desc, pro_name
) values (
3, '역사 History of Magic',  '20185002', 3, 'C', '과목 이름 그대로 마법의 역사를 배우는 과목이다. 마법사와 마녀의 역사 뿐 아니라 도깨비와 관련된 역사를 배우기도 한다.', 'Horace Slughorn'
);

insert into tb_courselist (
course_no, name, professor_no, time, room, course_desc, pro_name
) values (
4, '변신술 Transfiguration',  '20185003', 2, 'D', '물건의 형태나 겉모습을 바꾸거나 자신의 모습을 바꾸는 마법을 공부하는 과목이다.　변신술은 애니마구스, 교차 종 변신술, 비생물 생물화 변신술 등으로 갈라진다.', 'Minerva Mcgonagall'
);

insert into tb_courselist (
course_no, name, professor_no, time, room, course_desc, pro_name
) values (
5, '천문학 Astronomy',  '20185004', 2, 'E', '밤 하늘을 관찰하며 별의 이름과 행성의 위치, 움직임 등을 공부하는 과목이다.', 'Aurora Sinistra'
);


insert into tb_courselist (
course_no, name, professor_no, time, room, course_desc, pro_name
) values (
6, '비행 Flying',  '20185005', 2, 'F', '자루를 다루는 법과 비행하는 법을 공부하는 과목이다. 다른 과목들과는 달리 오직 1학년들만 참가할 수 있는 수업이다.', 'Pomona Sprout'
);

insert into tb_courselist (
course_no, name, professor_no, time, room, course_desc, pro_name
) values (
7, '약초학 Herbology',  '20185006', 2, 'G', '자루를 다루는 법과 비행하는 법을 공부하는 과목이다. 다른 과목들과는 달리 오직 1학년들만 참가할 수 있는 수업이다.', 'Pomona Sprout'
);

commit;








TRUNCATE TABLE tb_professor;
commit;
alter table tb_courselist add(pro_name varchar2(40));
select *
from community;



commit;
alter table tb_mem;

select *
from tb_member;

alter table tb_member add(studnt_no varchar2(30));
alter table tb_member add(professor_no varchar2(30));
ALTER TABLE tb_member MODIFY(professor_no number(10));
commit;

insert into tb_member (
  member_id,pass, member_type
) values (
  'test', 'test', 'p'
);

update tb_member
set pass = 9999
where member_id = 'admin';

select * from tb_member;
commit;
delete from tb_member
where professor_no = '20185000';

ALTER TABLE tb_member DROP COLUMN 컬럼명;

ALTER TABLE tb_member RENAME COLUMN pw TO pass;



select * from tb_member;
select * from tb_professor;
select * from tb_courselist;
insert into tb_professor (
  member_id, professor_no, course_no
) values (
  'Vector', 20185007, 7
);

commit;



