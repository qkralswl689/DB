--  스키마 생성
-- 소유권자의 사용자 ID가 홍길동 인 스키마 명지대를 정의하는 SQL문
CREATE SCHEMA 명지대 AUTHORIZATION 홍길동;

-- 도메인 생성
-- 성별 을 남 OR 여 와같이 정해진 1개의 문자로 표현되는 도메인 SEX를 정의하는 SQL
CREATE DOMAIN SEX CHAR(1) 
DEFUALT'여' 
CONSTRAINT 남여 CHECK(VALUE IN('남','여')):

CREATE UNIQUE INDEX 고객번호 ON 고객(고객번호 DESC);