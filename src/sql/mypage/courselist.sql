create table tb_courselist (
course_no number(3) primary key,
name varchar2(30),
professor_no number(10),
time varchar2(30),
room varchar2(30),
course_desc varchar2(4000)
);

select * from tb_courselist;

--sample
insert into tb_courselist (
course_no, name, professor_no, time, room, course_desc
) values (
1, 'lec1', 20185555, 'time1', 'room1', 'coursedesc1'
);


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



TRUNCATE TABLE tb_courselist;

alter table tb_courselist add(pro_name varchar2(40));
select *
from community;

commit;

