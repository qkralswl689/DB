-- create or replace view hr_emp_view1 : �� ���� �̹� hr_emp_view1�� ���� �̸��� �䰡 �����Ұ�� ������Ѵ�
-- hr_emp_view1 ��� �並 �����Ѵ� 
create or replace view hr_emp_view1 
-- ���� ������ 
-- employees ���̺�κ��� first_name||' '||last_name) "�����",salary "�޿�" �� ����Ѵ�
as select(first_name||' '||last_name) "�����",salary "�޿�"
from employees
-- department_id �� 
-- departments ���̺��� department_name = 'Finance' �� department_id �� ���� �����͸� 
where department_id = (select department_id
                        from departments
                        where department_name = 'Finance')
-- �׸��� salary �� 
-- employees ���̺��� department_id ��
-- departments ���̺��� department_name = 'Finance' �� department_id �� ���� �����Ϳ���
-- max(salary) : �޿��� ���� ���� ������ �� 
and salary = (select max(salary)
              from employees
              where department_id = (Select department_id
                                     from departments
                                     where department_name='Finance')
            );
 
-- hr_emp_view1 �� ���� ������� ����Ѵ� 
select ����� from hr_emp_view1;          