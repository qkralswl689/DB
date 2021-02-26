-- 회원정보를 가진 member_tbl이라는 테이블을 생성한다
CREATE TABLE member_tbl(
-- 회원의정보는 id ,pw,name,gender,email,mobile,phone,zip1,address1,zip2,address2,girthday,foindate로 구성된다
id VARCHAR2(20)primary key,
pw VARCHAR2(20)not null,
name VARCHAR2(100)not null,
gender CHAR not null,
email varchar2(50) not null unique,
mobile varchar2(13)not null unique,
phone varchar2(13)not null,
zip1 CHAR(5),
address1 varchar2(600),
zip2 char(6),
address2 varchar2(600),
birthday date,
joindate date default sysdate); 
-- comment 주석 달기
comment on column member_tbl.id is'아이디';
comment on column member_tbl.pw is'패스워드';
comment on column member_tbl.name is'이름';
comment on column member_tbl.gender is'성별';
comment on column member_tbl.email is'이메일';
comment on column member_tbl.mobile is'연락처1(휴대폰)';
comment on column member_tbl.phone is'연락처2(일반전화)';
comment on column member_tbl.zip1 is'도로명 주소 우편번호';
comment on column member_tbl.address1 is'도로명주소';
comment on column member_tbl.zip2 is'구체계 주소 우편번호';
comment on column member_tbl.address2 is'구체계 주소';
comment on column member_tbl.birthday is'생년 월일';
comment on column member_tbl.joindate is'가입일';

-- 테이블 삭제
drop table member_tbl;

create table mamber_tbl(
-- constraint 제약사항 삽입
id VARCHAR2(20)constraint member_tbl_id_pk primary key,
pw varchar2(20)constraint member_tbl_pw_nn not null,
name VARCHAR2(100)constraint member_tbl_name_nn not null,
gender char constraint member_tbl_gender_nn not null,
email varchar2(50)constraint member_tbl_email_nn not null,
mobile varchar2(13)constraint member_tbl_mobile_nn not null,
phone varchar2(13)constraint member_tbl_phone_nn not null,
zip char(5),
address1 varchar2(600),
zip2 char(6),
address2 varchar2(600),
birthday date,
hoindate date default sysdate,
constraint member_tbl_email_u unique(email),
constraint member_tbl_mobile_u unique(mobile));

DROP TABLE mamber_tbl;

create table  member_tbl(
id varchar2(20),
pw varchar2(20),
name varchar2(100),
gender char,
email varchar2(50),
mobile varchar2(13),
phone varchar2(13),
zip1 char(5),
address1 varchar2(600),
zip2 char(6),
address2 varchar2(600),
birthday date,
joindate date default sysdate);

-- 테이블 내용 변경
alter table member_tbl
add constraint member_tbl_id_pk primary key(id);

ALTER TABLE member_tbl
add CONSTRAINT member_tbl_email_u UNIQUE(email);

ALTER TABLE member_tbl 
add constraint member_tbl_mobile_u UNIQUE(mobile);

ALTER table member_tbl
MODIFY (pw CONSTRAINT member_tbl_pw_nn not null);

ALTER TABLE member_tbl
MODIFY (name CONSTRAINT member_tbl_name_nn not null);

ALTER TABLE member_tbl
MODIFY (gender CONSTRAINT member_tbl_gender_nn not null);

ALTER TABLE member_tbl
MODIFY (email CONSTRAINT member_tbl_email_nn not null);

ALTER TABLE member_tbl
MODIFY (mobile CONSTRAINT member_tbl_mobile_nn not null);

ALTER TABLE member_tbl
MODIFY (phone CONSTRAINT member_tbl_phone_nn not null);


INSERT INTO member_tbl values
('abcd1234','123','홍길동','m','@gmail','010-2222','02-1111','1234','부일로','5678','현대홈타운','2021-02-25',sysdate);

UPDATE member_tbl set
pw = 'llll',
email = 'java@com',
zip1 = '1313',
address1 = '부일로 605'
where id ='abcd1234';

select*from member_tbl;
delete member_tbl;

delete member_tbl
where id ='abcd1234';