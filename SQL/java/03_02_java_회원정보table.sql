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

comment on column member2.member_id is '���̵�';
comment on column member2.member_password is '�о�����';
comment on column member2.member_nicname is '����';
comment on column member2.member_name is '�̸�';
comment on column member2.member_gender is '����';
comment on column member2.member_email is '����';
comment on column member2.member_phone is '����ó';
comment on column member2.member_birth is '�������';
comment on column member2.member_zip is '�����ȣ';
comment on column member2.member_address_basic is '�⺻�ּ�';
comment on column member2.member_address_detail is '���ּ�';
comment on column member2.member_joindate is '������';

INSERT INTO member2 VALUES (
'1234java','1234567j!','mingki','����','m','skfksnfk@gmail.com','010-3078-0694',
'1991-01-04','12345','Ȳ������','������',sysdate);

select * from member2 ;