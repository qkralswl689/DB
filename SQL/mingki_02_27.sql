-- ���̺� �����
-- ���̺� �̸� �� () �ȿ� � �÷����� �������� ���Ѵ�
create TABLE superband_member(
seq number(3),
name VARCHAR2(30),
position VARCHAR2(100),
final_yn VARCHAR2(1));

-- '������'�� �����Ʈ ���� Ȯ���ϴ� ��ɹ�
-- �ѱ� : �ѱ��ڿ� 3����Ʈ
select vsize('������') from dual;

-- ���̺� ��ȸ
SELECT * fROM superband_member;

-- ��ü �÷��� ������ ����
-- ������� �־��ָ�ȴ�
INSERT INTO superband_member VALUES(
1,'����','vocal,piano','y');

SELECT * from idol_group;

INSERT INTO IDOL_GROUP VALUES(
'JYP �������̸յ�','ITZY','2019','ITZ DIFFERENT','GIRL');

-- COMPANY,GROUP_NAME : �ΰ��� �÷����� �����͸� ������ ���
INSERT INTO IDOL_GROUP (COMPANY,GROUP_NAME)VALUES(
'�׽�Ʈ �Ҽӻ�','���� ���̵� �׷�');

CREATE TABLE BILLBOARD_CHARTS (
	RANKING	NUMBER(3) NOT NULL,
	TITLE VARCHAR(500) NOT NULL,
	SINGER VARCHAR(100),
	UPDOWN NUMBER(3),
	COUNTRY VARCHAR(50)
);

INSERT INTO BILLBOARD_CHARTS VALUES (1,'MAP OF THE SOUL : 7', 'BTS', 0, 'Korea'); 
INSERT INTO BILLBOARD_CHARTS VALUES (2,'Still Flexin, Still Steppin','YoungBoy Never Broke Again',0, 'America'); 
INSERT INTO BILLBOARD_CHARTS VALUES (3,'Ordinary Man', 'Ozzy Osbourne', 0, 'England');
INSERT INTO BILLBOARD_CHARTS VALUES (4,'Changes', 'Justin Bieber', -3 ,'Canada');
INSERT INTO BILLBOARD_CHARTS VALUES (5,'Please Excuse Me For Being Antisocial','Roddy Ricch', -1, 'America');
INSERT INTO BILLBOARD_CHARTS VALUES (6,'Artist 2.0', 'A Boogie Wit da Hoodie', -4, 'America');
INSERT INTO BILLBOARD_CHARTS VALUES (7,'Hollywoods Bleeding', 'Post Malone', -1, 'America');
INSERT INTO BILLBOARD_CHARTS VALUES (8,'Meet The Woo, V.2', 'Pop Smoke', 0, 'America');
INSERT INTO BILLBOARD_CHARTS VALUES (9,'A Love Letter To You 4', 'Trippie Redd', 27 ,'America');
INSERT INTO BILLBOARD_CHARTS VALUES (10,'When We All Fall Asleep, Where Do We Go?', 'Billie Eilish', -3, 'America');
INSERT INTO BILLBOARD_CHARTS VALUES (11,'Music To Be Murdered By', 'Eminem', -2, 'America');
INSERT INTO BILLBOARD_CHARTS VALUES (12,'Frozen II', 'Soundtrack', -1, 'America');
INSERT INTO BILLBOARD_CHARTS VALUES (13,'Fine Line', 'Harry Styles', 0, 'England');
INSERT INTO BILLBOARD_CHARTS VALUES (14,'KIRK', 'Dababy', -2, 'America');
INSERT INTO BILLBOARD_CHARTS VALUES (15,'Manic', 'Halsey', -5, 'America');
INSERT INTO BILLBOARD_CHARTS VALUES (16,'Lover', 'Taylor Swift', -2, 'America');
INSERT INTO BILLBOARD_CHARTS VALUES (17,'The Slow Rush', 'Tame Impala', -14, 'Australia');
INSERT INTO BILLBOARD_CHARTS VALUES (18,'What You See Is What You Get', 'Luke Combs', -2, 'America');
INSERT INTO BILLBOARD_CHARTS VALUES (19,'JACKBOYS', 'JACKBOYS', -2, 'America');
INSERT INTO BILLBOARD_CHARTS VALUES (20,'Over It', 'Summer Walker', -2, 'America');

-- Ư���� �÷� ��ȸ�� 
SELECT TITLE,SINGER FROM billboard_charts;

-- COUNTRY�� England �� ������ ��ȸ
SELECT * FROM billboard_charts 
WHERE country='England';

-- ������ 10�� �ȿ� �ִ� �����͸�
SELECT * FROM billboard_charts 
WHERE ranking < 11;

-- �뷡������ M���� ���۵Ǵ� �뷡 ��ȸ
SELECT * FROM billboard_charts 
WHERE TITLE LIKE'%M%';

-- �������� ��ȸ
SELECT country FROM billboard_charts 
GROUP BY country;

-- ī��Ʈ
SELECT country,COUNT(*) FROM billboard_charts 
GROUP BY country;

-- COUNT�� �Ѱ��̻��� ���� ��ȸ
SELECT country,COUNT(*) FROM billboard_charts 
GROUP BY country HAVING COUNT(*) >1 ;

-- ��ŷ �������� ��ȸ
SELECT * FROM billboard_charts 
ORDER BY ranking DESC;

-- ������ ���� ���� ���� ��
SELECT * FROM billboard_charts 
ORDER BY updown DESC;
  CREATE TABLE IDOL_MEMBER
   (	"GROUP_NAME" VARCHAR2(300 BYTE) NOT NULL ENABLE, 
	"MEMBER_NAME" VARCHAR2(100 BYTE) NOT NULL ENABLE, 
	"REAL_NAME" VARCHAR2(100 BYTE), 
	"BIRTHDAY" VARCHAR2(8 BYTE), 
	"SNS_INFO" VARCHAR2(100 BYTE)
   );


INSERT INTO IDOL_MEMBER VALUES ('BTS','RM','�賲��','19940912','V LIVE');
INSERT INTO IDOL_MEMBER VALUES ('BTS','����','������','19930309','V LIVE');
INSERT INTO IDOL_MEMBER VALUES ('BTS','��','�輮��','19921204','V LIVE');
INSERT INTO IDOL_MEMBER VALUES ('BTS','����ȩ','��ȣ��','19940218','V LIVE');
INSERT INTO IDOL_MEMBER VALUES ('BTS','����','������','19951013','V LIVE');
INSERT INTO IDOL_MEMBER VALUES ('BTS','����','������','19970901','V LIVE');
INSERT INTO IDOL_MEMBER VALUES ('Ʈ���̽�','����','�ӳ���','19950922','V LIVE');
INSERT INTO IDOL_MEMBER VALUES ('Ʈ���̽�','����','������','19961101','V LIVE');
INSERT INTO IDOL_MEMBER VALUES ('Ʈ���̽�','���','������ ���','19961109','V LIVE');
INSERT INTO IDOL_MEMBER VALUES ('Ʈ���̽�','�糪','�̳�����Ű �糪','19961229','V LIVE');
INSERT INTO IDOL_MEMBER VALUES ('Ʈ���̽�','��ȿ','����ȿ','19970201','V LIVE');
INSERT INTO IDOL_MEMBER VALUES ('Ʈ���̽�','�̳�','���� �̳�','19970324','V LIVE');
INSERT INTO IDOL_MEMBER VALUES ('Ʈ���̽�','����','�����','19980528','V LIVE');
INSERT INTO IDOL_MEMBER VALUES ('Ʈ���̽�','ä��','��ä��','19990423','V LIVE');
INSERT INTO IDOL_MEMBER VALUES ('Ʈ���̽�','����','���� ����','19990614','V LIVE');
INSERT INTO IDOL_MEMBER VALUES ('�ƽ�Ʈ��','������','�̵���','19970330','�ν�Ÿ�׷�');
INSERT INTO IDOL_MEMBER VALUES ('�ƽ�Ʈ��','����','����','19980126','�ν�Ÿ�׷�');
INSERT INTO IDOL_MEMBER VALUES ('�ƽ�Ʈ��','MJ','�����','19940305','�ν�Ÿ�׷�');
INSERT INTO IDOL_MEMBER VALUES ('�ƽ�Ʈ��','����','������','19960315','�ν�Ÿ�׷�');
INSERT INTO IDOL_MEMBER VALUES ('�ƽ�Ʈ��','��Ű','�ڹ���','19990225','�ν�Ÿ�׷�');
INSERT INTO IDOL_MEMBER VALUES ('�ƽ�Ʈ��','������','������','20000321','�ν�Ÿ�׷�');
INSERT INTO IDOL_MEMBER VALUES ('(����)���̵�','�̿�','','19970131','V LIVE');
INSERT INTO IDOL_MEMBER VALUES ('(����)���̵�','�δ�','','19971023','V LIVE');
INSERT INTO IDOL_MEMBER VALUES ('(����)���̵�','����','','19980309','V LIVE');
INSERT INTO IDOL_MEMBER VALUES ('(����)���̵�','�ҿ�','','19980826','V LIVE');
INSERT INTO IDOL_MEMBER VALUES ('(����)���̵�','���','','19990923','V LIVE');
INSERT INTO IDOL_MEMBER VALUES ('(����)���̵�','��ȭ','','20000106','V LIVE');

-- �������������� NULL���� ���� ���� ���� �������� NULL���� ���������� ������ ���� ��
SELECT *FROM idol_member
ORDER BY real_name DESC NULLS LAST;

-- �������������� NULL���� ���� ������ �� NULL���� �� ���� �ø��� ������
SELECT *FROM idol_member
ORDER BY real_name NULLS FIRST;

-- �ΰ��� Į������ �����ϰ� ���� ��
SELECT *FROM idol_member
ORDER BY real_name ,birthday;

SELECT * FROM idol_member;

-- AILAS : A => IDOL_GROUP�� A�� ��Ī�ϰڴ�
-- INNER JOIN A�� B���̺� �Բ� �ִ°͵鸸 ����
SELECT a.company,a.group_name,b.member_name,b.real_name FROM idol_group A,idol_member B 
-- A�� B�� ���� ���� (�����)
WHERE a.group_name = b.group_name;

-- ������ �׷쿡 ����� ����� �ִ��� ������� ��
-- COUNT���ÿ��� GROUP BY ����ؾ��Ѵ�
SELECT a.company,a.group_name, COUNT(b.member_name) COUNT
FROM idol_group A, idol_member B 
WHERE a.group_name = b.group_name
GROUP BY a.company,a.group_name;

