-- ȸ�������� ���� member_tbl�̶�� ���̺��� �����Ѵ�
CREATE TABLE member_tbl(
-- ȸ���������� id ,pw,name,gender,email,mobile,phone,zip1,address1,zip2,address2,girthday,foindate�� �����ȴ�
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
-- comment �ּ� �ޱ�
comment on column member_tbl.id is'���̵�';
comment on column member_tbl.pw is'�н�����';
comment on column member_tbl.name is'�̸�';
comment on column member_tbl.gender is'����';
comment on column member_tbl.email is'�̸���';
comment on column member_tbl.mobile is'����ó1(�޴���)';
comment on column member_tbl.phone is'����ó2(�Ϲ���ȭ)';
comment on column member_tbl.zip1 is'���θ� �ּ� �����ȣ';
comment on column member_tbl.address1 is'���θ��ּ�';
comment on column member_tbl.zip2 is'��ü�� �ּ� �����ȣ';
comment on column member_tbl.address2 is'��ü�� �ּ�';
comment on column member_tbl.birthday is'���� ����';
comment on column member_tbl.joindate is'������';

-- ���̺� ����
drop table member_tbl;

create table mamber_tbl(
-- constraint ������� ����
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

-- ���̺� ���� ����
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
('abcd1234','123','ȫ�浿','m','@gmail','010-2222','02-1111','1234','���Ϸ�','5678','����ȨŸ��','2021-02-25',sysdate);

UPDATE member_tbl set
pw = 'llll',
email = 'java@com',
zip1 = '1313',
address1 = '���Ϸ� 605'
where id ='abcd1234';

select*from member_tbl;
delete member_tbl;

delete member_tbl
where id ='abcd1234';