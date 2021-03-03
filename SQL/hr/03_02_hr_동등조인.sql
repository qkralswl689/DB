-- (hr ����) (���� ����) ��������(Oxford)�ÿ� �����ϴ� ������ �̸��� ������������ ����Ͻʽÿ�.

-- e.first_name �� ��ĭ ' ' �� e.last_name�� �����ϰ� ��Ī�� �̸����� �����Ͽ� ���
SELECT e.first_name || ' ' || e.last_name "�̸�"
-- employees,departments,locations ���̺�κ���
from employees e, departments d ,locations l
-- e.department_id �� d.department_id �� ����
where e.department_id = d.department_id
-- d.location_id �� l.location_id �� ����
and d.location_id = l.location_id 
-- l.city �� 'Oxford' �� ����
and l.city = 'Oxford'
-- first_name �� �������� ���������Ͽ� ����
order by first_name;

-- (hr ����) (���� ����) �����ϰ� ������� 2002�� 1�� 1�� ������ �ٹ��ϱ� ������ ������� 
-- ���̵�� �̸�(������ ���ļ� �����)�� ȭ�鿡 �μ��Ͻʽÿ�.
-- e.employee_id��  e.first_name �� ��ĭ ' ' �� e.last_name�� �����ϰ� ��Ī�� �̸����� ������ �ߺ� ���� �� ���
-- as�� ���������ϴ�
-- distinct : �ߺ� ����
select DISTINCT e.employee_id,(e.first_name || ' ' || e.last_name) as "�̸�"
-- employees �� job_history ���̺�κ���
from employees e, job_history j
-- e.employee_id �� j.employee_id �� ���� j.start_date �� '2002/01/01' ���� ���� ��� ���
where e.employee_id = j.employee_id
and j.start_date < '2002/01/01';

-- (hr ����) (���� ����) �þ�Ʋ�� ��� ��� ������� �̸�(last_name), �μ� ��, ���� ID �� ���� ����
-- ��ȸ�մϴ�.
select e.last_name, d.department_name, l.location_id, l.city
from employees e, departments d , locations l
where e.department_id = d.department_id 
and d.location_id = l.location_id
and l.city = 'Seattle';

-- (hr ����) (self ����) �ڽ��� ������(manager)���� ���� ���� ������� �̸�(last_name) �� 
-- �����(hire_date)�� ��ȸ�մϴ�.

-- e.last_name�� e.employee_id �� e.hire_date �� ���
select e.last_name, e.employee_id,e.hire_date
-- employees e, employees m : ���� ���̺��̶� ��Ī�� �ٸ��� �ָ� ���ε��� ����� �� �ִ�
from employees e, employees m
-- e.manager_id �� m.employee_id �� ���� e.hire_date �� m.hire_date���� ������
where e.manager_id = m.employee_id 
and e.hire_date < m.hire_date
-- e.last_name �� �������� �������� �����Ѵ�
order by e.last_name;

-- (hr ����) (���� ����) �μ� ��, ��ġ ID, �� �μ� ��(�� ���) �� �����, �� �μ� �� ��� ����(��Ī 
-- "��� ����")�� ��ȸ�մϴ�. ��, ��� ������ �Ҽ��� 2�ڸ������� ǥ���Ѵ�.

-- d.department_name �� d.location_id ��
-- count(e.employee_id): employee_id ���� ���ϰ� => �� �����
-- round(avg(salary),2) "��տ���" => ������ ����� ���ϰ� �Ҽ���2�ڸ����� ǥ���ϰ� ��Ī�� ��տ������� ������ ����Ѵ�
select d.department_name, d.location_id ,count(e.employee_id),round(avg(salary),2) "��տ���"
-- employees �� departments ���̺�κ���
from employees e, departments d
-- e.department_id �� d.department_id ���� �ڷ�� �߿�
where e.department_id = d.department_id
-- d.department_name �� d.location_id �� �׷캰�� �����Ѵ�
GROUP BY d.department_name,d.location_id
-- d.location_id�� �������� �������� �����Ѵ�
order by d.location_id;

-- (hr ����) (���� ����) �μ� ��ȣ�� 30 �̰ų� 90�� �μ��� ��� ���� ���̵� �� �μ� ���̵� �ߺ��� 
-- �����Ͽ� ���� ���̵� ������ ������������ �����Ͽ� ��ȸ�Ͻʽÿ�.

-- e.job_id �� d.department_id �� ���
select distinct e.job_id,d.department_id
-- employees e �� departments d ���̺�� ����
FROM  employees e, departments d
-- d.department_id  �� e.department_id �� ���� 
WHERE d.department_id  = e.department_id
-- d.department_id �߿� ��ȣ�� in(30,90) 30 ,90 �� �����͸�
and d.department_id in(30,90)
-- e.job_id �� �������� �������� ���� ���� 
ORDER BY e.job_id;

