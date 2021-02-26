select * from employees;

-- Steven �̸� �� ���� ������ ����
select * from employees
where first_name = 'Steven';

-- first_name �� last_name ���̿� ������ �־� ���
select first_name || ' ' || last_name from employees
where first_name = 'Steven';

-- first_name �� last_name ���̿� ������ �־� ��� �� ��Ī�� �̸� ���� ����
select first_name||' '||last_name as "�̸�" from employees
where first_name = 'Steven';

-- first_name �� last_name ���̿� ������ �־� ��� �� ��Ī�� �̸� ���� ����
select first_name||' '||last_name "�̸�" from employees
where first_name = 'Steven';

-- Kevin�̶�� �̸��� ���� �������� �޿��� 10000�� ���ϰ� ��Ī�� 10000�޷� �λ�� ���� ������ ���
select salary+10000 "10000�޷� �λ��" FROM employees
where first_name = 'Kevin';

-- first_name �� �ߺ��� ���� �� �� ���
SELECT distinct first_name from employees;

-- first_name �� last_name ���̿� ������ �ְ� ��Ī�� �̸����� �����Ͽ� id�� 150 �ʰ� 170�̸��� ������ ���
SELECT first_name||' '||last_name "�̸�" from employees
where employee_id > 150 AND employee_id < 170;

-- first_name �� last_name ���̿� ������ �ְ� ��Ī�� �̸����� �����Ͽ� id�� 150 �ʰ��� ������ ���
select first_name||' '||last_name "�̸�" FROM employees
where employee_id >150;

-- first_name �� D�� �����ϴ� ������ ���
select first_name from employees
where first_name LIKE 'D%';

-- Like �� ���⶧���� �ƹ��͵� ��� �ȵȴ�
select first_name from employees
where first_name = 'D%';

-- email ������ �߿� id�� 150�̻��̰� 170 ������ �����͸� ��Ī�� �̸��Ϸ� ���� ���
select email "�̸���" from employees
where employee_id >= 150 AND employee_id <=170;

-- email ������ �߿� id�� 150~ 170 ������ �����͸� ��Ī�� �̸��Ϸ� ���� ���
select email "�̸���" From employees
where employee_id between 150 and 170;

