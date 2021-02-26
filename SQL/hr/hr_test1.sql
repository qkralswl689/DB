select * from user_constraints;

-- employees 내용 전체보기
desc employees;

-- tables 내용 전체 보기
desc user_tables;

-- 메타데이터 생성 테이블명 확인하기
select * from user_tables;
select * FROM tab;

-- DEPARTMENTS 테이블 내용 확인
SELECT column_name, data_type,
data_length, data_precision, data_scale,
nullable, data_default
FROM user_tab_columns
WHERE table_name = 'DEPARTMENTS';

-- 테이블 복사
create table emp1 as select * from employees;

-- 테이블 삭제
drop table emp1;

