select * from user_constraints;

-- employees ���� ��ü����
desc employees;

-- tables ���� ��ü ����
desc user_tables;

-- ��Ÿ������ ���� ���̺�� Ȯ���ϱ�
select * from user_tables;
select * FROM tab;

-- DEPARTMENTS ���̺� ���� Ȯ��
SELECT column_name, data_type,
data_length, data_precision, data_scale,
nullable, data_default
FROM user_tab_columns
WHERE table_name = 'DEPARTMENTS';

-- ���̺� ����
create table emp1 as select * from employees;

-- ���̺� ����
drop table emp1;

