-- id�� 200�̻��̰ų� ���� �ڷ� id�� �������� ������������ ���
select * from employees
where employee_id >=200
order by employee_id asc;

-- id�� 200�̻��̰ų� ���� �ڷ� id�� �������� ������������ ���
SELECT * FROM employees
where employee_id >= 200
order by employee_id desc;

-- id�� 200�̻��̰ų� ���� �ڷ� first_name�� �������� ������������ ���
select * from employees
where employee_id >=200
ORDER BY first_name asc;

-- id�� 200�̻��̰ų� ���� �ڷ� first_name�� salary�� �������� ������������ ���
-- ���� ������ ��ȿ���� �ʴ´� : ���� �и� �� �ش�Ǵ� �ʵ带 �ռ��� �����ϴ°��� �ٶ����ϴ�
select * from employees
where employee_id >=200
ORDER BY first_name,salary asc;

-- M_id, first_name , salary �ڷḦ M_id�� �������� salry �� ������������ ���
SELECT manager_id, first_name, salary from employees
order by manager_id, salary asc;

-- dual : �������̺�,DUMMY Table => ���̺��� �� ���� ���� �� ��� 
select abs(-15) "���밪(Absolute)" from dual;



    