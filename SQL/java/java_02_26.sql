create table member(
member_id VARCHAR2(20) PRIMARY key,
member_password VARCHAR2(20) not null,
member_nickname VARCHAR2(50)not null,
member_name VARCHAR2(25) not null,
member_gender char(5) not null,
member_email varchar2(20) UNIQUE,
member_phone varchar2(13) not null,
member_birth date not null,
member_zip varchar2(5) ,
member_address_basic VARCHAR2(600),
member_address_detail varchar2(300),
member_joindate date not null); 

INSERT INTO member VALUES(
'java1234','!m44441111','全寸公','全辨悼','m',
'1234@gnamil.com','010-4118-4712','1991-07-04','12345',
'何老肺','何玫矫','2021-02-26');

SELECT
    *
FROM member where member_id = 'java1234';

select member_name from member
where member_name = '全辨悼' ;
