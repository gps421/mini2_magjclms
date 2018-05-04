CREATE TABLE TB_MEMBER
(
    member_id      VARCHAR2(30)     NULL, 
    user_name      VARCHAR2(30)     NULL, 
    birth_date     NUMBER(8)        NULL, 
    pw             VARCHAR2(30)     NULL, 
    pw_hint        VARCHAR2(30)     NULL, 
    email          VARCHAR2(50)     NULL, 
    phone_no       VARCHAR2(11)       NULL, 
    addr           VARCHAR2(100)    NULL, 
    post_code      NUMBER(5)        NULL,
    dormitory      VARCHAR2(30)     NULL,
    grade          NUMBER(1)        NULL, 
    member_type    VARCHAR2(3)          NULL, 
    CONSTRAINT TB_MEMBER_PK PRIMARY KEY (member_id)
);

commit;