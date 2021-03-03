-- 1번
CREATE TABLE goard_tbl(
id number(10) CONSTRAINT board_id_pk primary key ,
title varchar2(400) NOT NULL,
name varchar2(40) NOT NULL,
email varchar2(50) NOT NULL UNIQUE);

comment ON COLUMN goard_tbl.id IS '아이디,숫자';
comment ON COLUMN goard_tbl.title IS '글제목,한글허용';
comment ON COLUMN goard_tbl.name IS '글쓴이,한글허용';
comment ON COLUMN goard_tbl.email IS '이메일,영문/숫자(한글불가)';

-- 2번
