-- 테이블 만들기
-- 테이블 이름 후 () 안에 어떤 컬럼으로 구성할지 정한다
create TABLE superband_member(
seq number(3),
name VARCHAR2(30),
position VARCHAR2(100),
final_yn VARCHAR2(1));

-- '가나다'가 몇바이트 인지 확인하는 명령문
-- 한글 : 한글자에 3바이트
select vsize('가나다') from dual;

-- 테이블 조회
SELECT * fROM superband_member;

-- 전체 컬럼에 데이터 삽입
-- 순서대로 넣어주면된다
INSERT INTO superband_member VALUES(
1,'아일','vocal,piano','y');

SELECT * from idol_group;

INSERT INTO IDOL_GROUP VALUES(
'JYP 엔터테이먼드','ITZY','2019','ITZ DIFFERENT','GIRL');

-- COMPANY,GROUP_NAME : 두개의 컬럼에만 데이터를 넣을것 명시
INSERT INTO IDOL_GROUP (COMPANY,GROUP_NAME)VALUES(
'테스트 소속사','예비 아이돌 그룹');

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

-- 특정한 컬럼 조회시 
SELECT TITLE,SINGER FROM billboard_charts;

-- COUNTRY가 England 인 가수만 조회
SELECT * FROM billboard_charts 
WHERE country='England';

-- 순위가 10위 안에 있는 데이터만
SELECT * FROM billboard_charts 
WHERE ranking < 11;

-- 노래제목이 M으로 시작되는 노래 조회
SELECT * FROM billboard_charts 
WHERE TITLE LIKE'%M%';

-- 국가별로 조회
SELECT country FROM billboard_charts 
GROUP BY country;

-- 카운트
SELECT country,COUNT(*) FROM billboard_charts 
GROUP BY country;

-- COUNT가 한곡이상인 나라 조회
SELECT country,COUNT(*) FROM billboard_charts 
GROUP BY country HAVING COUNT(*) >1 ;

-- 랭킹 내림차순 조회
SELECT * FROM billboard_charts 
ORDER BY ranking DESC;

-- 순위가 가장 많이 오른 순
SELECT * FROM billboard_charts 
ORDER BY updown DESC;
  CREATE TABLE IDOL_MEMBER
   (	"GROUP_NAME" VARCHAR2(300 BYTE) NOT NULL ENABLE, 
	"MEMBER_NAME" VARCHAR2(100 BYTE) NOT NULL ENABLE, 
	"REAL_NAME" VARCHAR2(100 BYTE), 
	"BIRTHDAY" VARCHAR2(8 BYTE), 
	"SNS_INFO" VARCHAR2(100 BYTE)
   );


INSERT INTO IDOL_MEMBER VALUES ('BTS','RM','김남준','19940912','V LIVE');
INSERT INTO IDOL_MEMBER VALUES ('BTS','슈가','민윤기','19930309','V LIVE');
INSERT INTO IDOL_MEMBER VALUES ('BTS','진','김석진','19921204','V LIVE');
INSERT INTO IDOL_MEMBER VALUES ('BTS','제이홉','장호석','19940218','V LIVE');
INSERT INTO IDOL_MEMBER VALUES ('BTS','지민','박지민','19951013','V LIVE');
INSERT INTO IDOL_MEMBER VALUES ('BTS','정국','전정국','19970901','V LIVE');
INSERT INTO IDOL_MEMBER VALUES ('트와이스','나연','임나연','19950922','V LIVE');
INSERT INTO IDOL_MEMBER VALUES ('트와이스','정연','유정연','19961101','V LIVE');
INSERT INTO IDOL_MEMBER VALUES ('트와이스','모모','히라이 모모','19961109','V LIVE');
INSERT INTO IDOL_MEMBER VALUES ('트와이스','사나','미나토자키 사나','19961229','V LIVE');
INSERT INTO IDOL_MEMBER VALUES ('트와이스','지효','박지효','19970201','V LIVE');
INSERT INTO IDOL_MEMBER VALUES ('트와이스','미나','묘이 미나','19970324','V LIVE');
INSERT INTO IDOL_MEMBER VALUES ('트와이스','다현','김다현','19980528','V LIVE');
INSERT INTO IDOL_MEMBER VALUES ('트와이스','채영','손채영','19990423','V LIVE');
INSERT INTO IDOL_MEMBER VALUES ('트와이스','쯔위','저우 쯔위','19990614','V LIVE');
INSERT INTO IDOL_MEMBER VALUES ('아스트로','차은우','이동민','19970330','인스타그램');
INSERT INTO IDOL_MEMBER VALUES ('아스트로','문빈','문빈','19980126','인스타그램');
INSERT INTO IDOL_MEMBER VALUES ('아스트로','MJ','김명준','19940305','인스타그램');
INSERT INTO IDOL_MEMBER VALUES ('아스트로','진진','박진우','19960315','인스타그램');
INSERT INTO IDOL_MEMBER VALUES ('아스트로','라키','박민혁','19990225','인스타그램');
INSERT INTO IDOL_MEMBER VALUES ('아스트로','윤산하','윤산하','20000321','인스타그램');
INSERT INTO IDOL_MEMBER VALUES ('(여자)아이들','미연','','19970131','V LIVE');
INSERT INTO IDOL_MEMBER VALUES ('(여자)아이들','민니','','19971023','V LIVE');
INSERT INTO IDOL_MEMBER VALUES ('(여자)아이들','수진','','19980309','V LIVE');
INSERT INTO IDOL_MEMBER VALUES ('(여자)아이들','소연','','19980826','V LIVE');
INSERT INTO IDOL_MEMBER VALUES ('(여자)아이들','우기','','19990923','V LIVE');
INSERT INTO IDOL_MEMBER VALUES ('(여자)아이들','수화','','20000106','V LIVE');

-- 내림차순에서는 NULL값이 원래 가장 먼저 나오지만 NULL값을 마지막으로 보내고 싶을 때
SELECT *FROM idol_member
ORDER BY real_name DESC NULLS LAST;

-- 오름차순에서는 NULL값이 가장 밑으로 감 NULL값을 맨 위로 올리고 싶을때
SELECT *FROM idol_member
ORDER BY real_name NULLS FIRST;

-- 두개의 칼럼으로 정렬하고 싶을 떄
SELECT *FROM idol_member
ORDER BY real_name ,birthday;

SELECT * FROM idol_member;

-- AILAS : A => IDOL_GROUP을 A로 지칭하겠다
-- INNER JOIN A와 B테이블에 함께 있는것들만 나열
SELECT a.company,a.group_name,b.member_name,b.real_name FROM idol_group A,idol_member B 
-- A와 B의 공통 내역 (연결고리)
WHERE a.group_name = b.group_name;

-- 각각의 그룹에 몇명의 멤버가 있는지 보고싶을 때
-- COUNT사용시에는 GROUP BY 사용해야한다
SELECT a.company,a.group_name, COUNT(b.member_name) COUNT
FROM idol_group A, idol_member B 
WHERE a.group_name = b.group_name
GROUP BY a.company,a.group_name;

