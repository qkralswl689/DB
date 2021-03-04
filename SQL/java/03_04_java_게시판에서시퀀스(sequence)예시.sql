-- 테이블 생성
CREATE TABLE board (
    articleid NUMBER(10),
    title varchar2(200),
    userName varchar2(20),  
    writeDate varchar2(50),                      
    TYPE varchar2(1),    
    email varchar2(50),  
    homeUrl varchar2(100),    
    parent_articleid NUMBER(10) ,        
    hits NUMBER(10),      
    content varchar2(4000),                        
    passwd varchar2(20),    
    CONSTRAINT pk_board PRIMARY KEY(articleid)
);

-- sequence 사용예시
-- seq_board 이름을 가진 시퀀스 생성
create sequence seq_board
-- start with 1 : 첫째 항이 1
start with 1
-- increment by 1 : 1씩 증가
increment by 1
-- MAXVALUE : 최대값
MAXVALUE 99999
-- nocycle : 최대값에 도달하면 시퀀스 생성을 중지
-- cycle : 최대값에 도달하면 최소값부터 다시시작
NOCYCLE
-- NOCACHE : 시퀀스 값을 메모리에 할당하지 않는다
-- CACHE : 메모리에 시퀀스 값을 미리 할당한다
NOCACHE;

-- 예시
-- nextval : 해당 시퀀스에서 다음 순번 값을 자동으로 가져온다
-- board 테이블의 articleid 에 시퀀스 값을 증가시켜라 (세번반복)
insert into board (articleid) values(seq_board.nextval);
insert into board (articleid) values(seq_board.nextval);
insert into board (articleid) values(seq_board.nextval);

-- 시퀀스 값 업데이트 된것 확인
select * from board;

-- 시퀀스 조회
-- currval : 해당 시퀀스 값 조회
select seq_board.currval FROM dual;
-- user_sequences : 전체 시퀀스 조회
select * from user_sequences;

-- 시퀀스 수정
-- ALTER SEQUENCE 시퀀스 변경
ALTER SEQUENCE seq_board
-- INCREMENT : 증가값 변경
INCREMENT by 2
-- 최소값 변경
minvalue 1
-- 최대값 변경
maxvalue 10
-- 사이클 여부 변경
CYCLE
-- 캐시 설정여부는 변경
NOCACHE;

-- 시퀀스 삭제
drop SEQUENCE 시퀀스명;