CREATE TABLE tb_member
(
    member_id      VARCHAR2(30)     NOT NULL, 
    name           VARCHAR2(30)     NOT NULL, 
    birth_date     NUMBER(8)        NOT NULL, 
    pw             VARCHAR2(30)     NOT NULL, 
    pw_hint        VARCHAR2(30)     NOT NULL, 
    email          VARCHAR2(50)     NOT NULL, 
    phone_no       VARCHAR2(30)     NOT NULL, 
    addr           VARCHAR2(100)    NOT NULL, 
    post_code      NUMBER(5)        NOT NULL, 
    dormitory      VARCHAR2(20)     NOT NULL, 
    year           NUMBER(1)        NOT NULL, 
    member_type    CHAR(1)          NOT NULL, 
    CONSTRAINT TB_MEMBER_PK PRIMARY KEY (member_id)
);

INSERT INTO tb_member (member_id, name, birth_date, pw, pw_hint, email, phone_no, addr, post_code, dormitory, year, member_type) VALUES ('member_id 1', 'name 1', 1, 'pw 1', 'pw_hint 1', 'email 1', 'phone_no 1', 'addr 1', 1, 'dormitory 1', 1, 'N');
INSERT INTO tb_member (member_id, name, birth_date, pw, pw_hint, email, phone_no, addr, post_code, dormitory, year, member_type) VALUES ('member_id 2', 'name 2', 2, 'pw 2', 'pw_hint 2', 'email 2', 'phone_no 2', 'addr 2', 2, 'dormitory 2', 2, 'N');

select *
	from tb_member
	where member_id = 'member_id 1';

