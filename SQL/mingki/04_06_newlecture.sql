CREATE TABLE NOTICE
(
     ID		NUMBER,
     TITLE 		NVARCHAR2(100),
     WRITER_ID	NVARCHAR2(50),
     CONTENT	CLOB,
     REGDATE  	TIMESTAMP,
     HIT		NUMBER,
     FILES		NVARCHAR2(1000)
);

CREATE TABLE "COMMENT"
(
     ID		NUMBER,
     CONTENT	NVARCHAR2(2000),
     REGDATE  	TIMESTAMP,
     WRITER_ID	NVARCHAR2(50),
     NOTICE_ID	NUMBER
);

CREATE TABLE ROLE
(
     ID		VARCHAR2(50),
     DISCRIPTION 	NVARCHAR2(500)
);

CREATE TABLE MEMBER_ROLE
(
     MEMBER_ID	NVARCHAR2(50),
     ROLE_ID		VARCHAR2(50)
);
-- ������ �ֱ�
insert into notice values
(
    123,
     '�ȳ�',
    '�����',
    '�ȳ��ϼ���',
   current_timestamp,
     1,
     '190�Դϴ�'
);
commit;
insert into notice values
(
    456,
     '�ȳ�1',
    '�����2',
    '�ȳ��ϼ���3',
   current_timestamp,
     14,
     '190�Դϴ�'
);
commit;
insert into notice values
(
    1234,
     '�ȳ�3',
    '�����3',
    '�ȳ��ϼ���3',
   current_timestamp,
     14,
     '190�Դϴ�'
);
commit;
insert into notice values
(
    1235,
     '�ȳ�5',
    '�����5',
    '�ȳ��ϼ���5',
   current_timestamp,
     15,
     '199�Դϴ�'
);
commit;

insert into notice values(1, 'JDBC�� �����ΰ�?', 'okay', 'aaa', sysdate, 1, '');
insert into notice values(2, 'JDBC ����̹� �ٿ�ε� ���', 'newlec', 'aaa', sysdate, 10, '');
insert into notice values(3, '��ȭ�ֽñ� �ٶ��ϴ�.', 'newlec', '����ó ����ϴ�. 010-2222-2333', sysdate, 22, '');
insert into notice values(4, 'Service ���� �߰��ϱ�', 'dragon', 'aaa', sysdate, 1, '');
insert into notice values(5, 'JSP���� JDBC ����ϱ�', 'newlec', 'soso', sysdate, 33, '');
insert into notice values(6, '�Ķ���͸� ������ ���� �����ϱ�', 'okay', 'aaa', sysdate, 1, '');
insert into notice values(7, '�߰���', 'dragon', 'aaa', sysdate, 44, '');
insert into notice values(8, '�𿣵�', 'okay', 'aaa', sysdate, 55, '');

insert into notice values(9, 'JDBC�� ?', 'okay', 'aaa', sysdate, 1, '');
insert into notice values(10, ' �ٿ�ε� ���', 'newlec', 'aaa', sysdate, 10, '');
insert into notice values(11, ' �ٶ��ϴ�.', 'newlec', '����ó ����ϴ�. 010-2222-2333', sysdate, 22, '');
insert into notice values(12, 'Service ����', 'dragon', 'aaa', sysdate, 1, '');
insert into notice values(13, 'JSP���� JDBC ����ϱ�2', 'newlec', 'soso', sysdate, 33, '');
insert into notice values(14, '�Ķ���͸� ������ ���� �����ϱ�2', 'okay', 'aaa', sysdate, 1, '');
insert into notice values(15, '�߰���1', 'dragon', 'aaa', sysdate, 44, '');
insert into notice values(16, '�𿣵�2', 'okay', 'aaa', sysdate, 55, '');

insert into notice values(17, 'JDBC�� ?', 'okay', 'aaa', sysdate, 1, '');
insert into notice values(18, ' �ٿ�ε� ���', 'newlec', 'aaa', sysdate, 10, '');
insert into notice values(19, ' �ٶ��ϴ�.', 'newlec', '����ó ����ϴ�. 010-2222-2333', sysdate, 22, '');
insert into notice values(20, 'Service ����', 'dragon', 'aaa', sysdate, 1, '');
insert into notice values(21, 'JSP���� JDBC ����ϱ�2', 'newlec', 'soso', sysdate, 33, '');
insert into notice values(22, '�Ķ���͸� ������ ���� �����ϱ�2', 'okay', 'aaa', sysdate, 1, '');
insert into notice values(23, '�߰���1', 'dragon', 'aaa', sysdate, 44, '');
insert into notice values(24, '�𿣵�2', 'okay', 'aaa', sysdate, 55, '');
insert into notice values(25, 'JDBC�� ?', 'okay', 'aaa', sysdate, 1, '');
insert into notice values(26, ' �ٿ�ε� ���', 'newlec', 'aaa', sysdate, 10, '');
insert into notice values(27, ' �ٶ��ϴ�.', 'newlec', '����ó ����ϴ�. 010-2222-2333', sysdate, 22, '');
insert into notice values(28, 'Service ����', 'dragon', 'aaa', sysdate, 1, '');
insert into notice values(29, 'JSP���� JDBC ����ϱ�2', 'newlec', 'soso', sysdate, 33, '');
insert into notice values(30, '�Ķ���͸� ������ ���� �����ϱ�2', 'okay', 'aaa', sysdate, 1, '');
insert into notice values(31, '�߰���1', 'dragon', 'aaa', sysdate, 44, '');
insert into notice values(32, '�𿣵�2', 'okay', 'aaa', sysdate, 55, '');
commit;