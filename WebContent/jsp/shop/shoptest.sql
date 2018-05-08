CREATE TABLE tb_goods
(
    goods_no          NUMBER(10)       NULL, 
    name              VARCHAR2(30)     NULL, 
    price             NUMBER(10)       NULL, 
    code              NUMBER(10)       NULL, 
    description       VARCHAR2(200)    NULL, 
    category          VARCHAR2(20)     NULL, 
    sale_price        NUMBER(10)       NULL, 
    save              NUMBER(10)       NULL, 
    goods_pic_path    VARCHAR2(100)    NULL, 
    shipping_cost     NUMBER(10)       NULL, 
    CONSTRAINT TB_GOODS_PK PRIMARY KEY (goods_no)
);

ALTER TABLE tb_goods RENAME COLUMN caregory TO category;


CREATE TABLE tb_cart
(
    cart_no      NUMBER(10)      NULL, 
    member_id    VARCHAR2(30)    NULL, 
    cart_date    DATE            NULL, 
    CONSTRAINT TB_CART_PK PRIMARY KEY (cart_no)
); 


CREATE  SEQUENCE s_cart_no;
START WITH 1
INCREMENT BY 1;


CREATE TABLE tb_cart_item
(
    cart_item_no     NUMBER(10)      NULL, 
    cart_no          NUMBER(10)      NULL, 
    goods_no         NUMBER(10)      NULL, 
    goods_name       VARCHAR2(50)    NULL, 
    goods_count      NUMBER(5)       NULL, 
    goods_sum        NUMBER(10)      NULL, 
    shipping_cost    NUMBER(10)      NULL, 
    CONSTRAINT TB_CART_ITEM_PK PRIMARY KEY (cart_item_no)
);

CREATE SEQUENCE s_cart_item_no
START WITH 1
INCREMENT BY 1;


CREATE TABLE tb_order
(
    order_id         NUMBER(10)       NULL, 
    member_id        VARCHAR2(30)     NULL, 
    order_date		 DATE DEFAULT     SYSDATE,
    delivery_addr    VARCHAR2(150)    NULL, 
    shipping_cost    NUMBER(10)       NULL, 
    CONSTRAINT TB_ORDER_PK PRIMARY KEY (order_id)
);

CREATE SEQUENCE s_order_no
START WITH 1
INCREMENT BY 1;

CREATE TABLE tb_order_item
(
    order_item_no    NUMBER(10)      NULL, 
    order_id         NUMBER(10)      NULL, 
    goods_no         NUMBER(10)      NULL, 
    goods_name       VARCHAR2(50)    NULL, 
    goods_count      NUMBER(5)       NULL, 
    goods_sum        NUMBER(10)      NULL, 
    order_date		 DATE DEFAULT    SYSDATE,
    order_state      VARCHAR2(20)    NULL, 
    order_payment    VARCHAR2(20)    NULL, 
    shipping_cost    NUMBER(10)      NULL, 
    CONSTRAINT TB_ORDER_ITEM_PK PRIMARY KEY (order_item_no)
);

CREATE SEQUENCE s_order_item_no
START WITH 1
INCREMENT BY 1;



ALTER TABLE TB_GOODS MODIFY(goods_pic_path VARCHAR2(100));

select * from tab; 
select * from TB_GOODS; 

INSERT INTO TB_GOODS (goods_no, name, price, CODE, DESCRIPTION, CATEGORY, SALE_PRICE, SAVE, GOODS_PIC_PATH, SHIPPING_COST ) 
              VALUES (1, '허니 비스킷', 1000, 1001, '맛있는 허니 비스킷이야', 'snack', 900, 10,'/mini2_magiclms/img/danish_butter_cookies1.jpg', 100);
INSERT INTO TB_GOODS (goods_no, name, price, CODE, DESCRIPTION, CATEGORY, SALE_PRICE, SAVE, GOODS_PIC_PATH, SHIPPING_COST ) 
              VALUES (2, '요거트 비스킷', 2000, 1002, '맛있는 요거트 비스킷', 'snack', 1900, 20,'/mini2_magiclms/img/cr0.jpg', 200);
INSERT INTO TB_GOODS (goods_no, name, price, CODE, DESCRIPTION, CATEGORY, SALE_PRICE, SAVE, GOODS_PIC_PATH, SHIPPING_COST ) 
              VALUES (3, '토스트 비스킷', 3000, 1003, '따뜻한 토스트 비스킷이야', 'snack', 2800, 30,'/mini2_magiclms/img/cr1.png', 300);
INSERT INTO TB_GOODS (goods_no, name, price, CODE, DESCRIPTION, CATEGORY, SALE_PRICE, SAVE, GOODS_PIC_PATH, SHIPPING_COST ) 
              VALUES (4, '초코 크로와상', 4000, 1004, '맛있는 초코 크로와상이야', 'snack', 3500, 40,'/mini2_magiclms/img/choco_bar5.jpg', 400);
INSERT INTO TB_GOODS (goods_no, name, price, CODE, DESCRIPTION, CATEGORY, SALE_PRICE, SAVE, GOODS_PIC_PATH, SHIPPING_COST ) 
              VALUES (5, '살구 크로와상', 5000, 1005, '상큼한 살구 크로와상이야', 'snack', 4500, 50,'/mini2_magiclms/img/cr3.jpg', 500);
INSERT INTO TB_GOODS (goods_no, name, price, CODE, DESCRIPTION, CATEGORY, SALE_PRICE, SAVE, GOODS_PIC_PATH, SHIPPING_COST ) 
              VALUES (6, '통밀 도너츠', 6000, 1006, '달달한 통밀 도너츠야', 'snack', 5500, 60,'/mini2_magiclms/img/cr5.jpg', 600);
INSERT INTO TB_GOODS (goods_no, name, price, CODE, DESCRIPTION, CATEGORY, SALE_PRICE, SAVE, GOODS_PIC_PATH, SHIPPING_COST ) 
              VALUES (7, '오레오 크래커', 7000, 1007, '쿠쿠쿠 오레오 크래커야', 'snack', 6500, 70,'/mini2_magiclms/img/oreo1.jpg', 700);
INSERT INTO TB_GOODS (goods_no, name, price, CODE, DESCRIPTION, CATEGORY, SALE_PRICE, SAVE, GOODS_PIC_PATH, SHIPPING_COST ) 
              VALUES (8, '크랜베리 쿠키', 8000, 1008, '몸에 좋은 크랜베리 쿠키야', 'snack', 7500, 80,'/mini2_magiclms/img/dan1.jpg', 800);

commit;

select * from tab; 
select * from TB_GOODS; 


