-- 1��
CREATE TABLE goard_tbl(
id number(10) CONSTRAINT board_id_pk primary key ,
title varchar2(400) NOT NULL,
name varchar2(40) NOT NULL,
email varchar2(50) NOT NULL UNIQUE);

comment ON COLUMN goard_tbl.id IS '���̵�,����';
comment ON COLUMN goard_tbl.title IS '������,�ѱ����';
comment ON COLUMN goard_tbl.name IS '�۾���,�ѱ����';
comment ON COLUMN goard_tbl.email IS '�̸���,����/����(�ѱۺҰ�)';

-- 2��
