CREATE TABLE user_role (
	role_id number(5,0) primary key,
	member_id varchar2(20) not null,
	member_role varchar2(20) default 'guest'
);

-- 일괄 적용
INSERT INTO user_role (role_id, member_id) 
	SELECT user_role_seq.nextval, member_id FROM member_tbl;
commit;
-- PROCEDURE : 리턴값이 없는 함수
CREATE OR REPLACE PROCEDURE dummy_member_gen_proc
IS
BEGIN
-- 구문
    FOR i IN 1..100 LOOP
        INSERT INTO member_tbl VALUES
        ('goodee_' || (1000+i),
         '#Oracle1234',
         '별명',
         '김' || (100+i),
         'm',
         'goodee_' || i || '@abcd.com',
         '010-1234-' || (1000+i),
         '1990-1-1',  
         '12345',  
         '서울 금천구 가산대로',
         '구디아카데미',  
         SYSDATE);
     END LOOP;
 
    COMMIT;    
END;
/
-- / : run 명령

-- EXECUTE : PLSQL 부르는 명령 
EXECUTE dummy_member_gen_proc;