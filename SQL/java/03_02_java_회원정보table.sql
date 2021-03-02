create table member2(
member_id VARCHAR2(20) PRIMARY KEY not null,
member_password VARCHAR2(20) not null,
member_ninkname VARCHAR2(25) not null,
member_name varchar2(75) not null,
member_gender char(1) not null,
member_email varchar2(100) UNIQUE not null,
member_phone varchar2(13) not null,
member_birth date not null,
member_zip varchar2(5),
member_address_basic varchar(600),
member_address_detail varchar(300),
member_joindate date default sysdate not null);

comment on column member2.member_id is '아이디';
comment on column member2.member_password is '패쓰워드';
comment on column member2.member_nicname is '별명';
comment on column member2.member_name is '이름';
comment on column member2.member_gender is '성별';
comment on column member2.member_email is '메일';
comment on column member2.member_phone is '연락처';
comment on column member2.member_birth is '생년월일';
comment on column member2.member_zip is '우편번호';
comment on column member2.member_address_basic is '기본주소';
comment on column member2.member_address_detail is '상세주소';
comment on column member2.member_joindate is '가입일';

INSERT INTO member2 VALUES (
'1234java','1234567j!','mingki','배현','m','skfksnfk@gmail.com','010-3078-0694',
'1991-01-04','12345','황제빌라','강서구',sysdate);

select * from member2 ;