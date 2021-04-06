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
-- 데이터 넣기
insert into notice values
(
    123,
     '안녕',
    '배달팽',
    '안녕하세여',
   current_timestamp,
     1,
     '190입니다'
);
commit;
insert into notice values
(
    456,
     '안녕1',
    '배달팽2',
    '안녕하세여3',
   current_timestamp,
     14,
     '190입니다'
);
commit;
insert into notice values
(
    1234,
     '안녕3',
    '배달팽3',
    '안녕하세여3',
   current_timestamp,
     14,
     '190입니다'
);
commit;
insert into notice values
(
    1235,
     '안녕5',
    '배달팽5',
    '안녕하세여5',
   current_timestamp,
     15,
     '199입니다'
);
commit;

insert into notice values(1, 'JDBC란 무엇인가?', 'okay', 'aaa', sysdate, 1, '');
insert into notice values(2, 'JDBC 드라이버 다운로드 방법', 'newlec', 'aaa', sysdate, 10, '');
insert into notice values(3, '전화주시기 바랍니다.', 'newlec', '연락처 남깁니다. 010-2222-2333', sysdate, 22, '');
insert into notice values(4, 'Service 계층 추가하기', 'dragon', 'aaa', sysdate, 1, '');
insert into notice values(5, 'JSP에서 JDBC 사용하기', 'newlec', 'soso', sysdate, 33, '');
insert into notice values(6, '파라미터를 가지는 문장 실행하기', 'okay', 'aaa', sysdate, 1, '');
insert into notice values(7, '추가요', 'dragon', 'aaa', sysdate, 44, '');
insert into notice values(8, '디엔드', 'okay', 'aaa', sysdate, 55, '');
commit;