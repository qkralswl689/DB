-- 사용할 db명시
USE bigdb; 

-- 테이블 생성
CREATE TABLE temp (
	id VARCHAR(20) PRIMARY KEY,
	NAME VARCHAR(100) NOT NULL
);

-- 데이터 삽입
INSERT INTO temp VALUES('hyun','혀니');

-- 정보 검색
SELECT * FROM temp;
bigdb