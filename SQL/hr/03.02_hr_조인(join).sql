-- 2. (hr ����) �μ�, ȸ��, ���� ���̺��� �Ʒ��� ���� 
-- �����ȣ, �̸�(��Ī), ���� ���̵�,�μ� ���̵�, �μ���, ����(��Ī)�� ���� ������ Ȱ���Ͽ� ��ȸ�Ͻʽÿ�.
-- select  e.employee_id, e.first_name "�̸�",e.last_name, d.department_id, d.department_name, l.city "����"
-- from departments d, emoloyees e, location l;

-- ����� ��
select e.employee_id,  
e.first_name || ' ' || e.last_name "�̸�", 
e.job_id, 
e.department_id,
d.department_name, 
l.city || ' ' || l.state_province "����"
FROM departments d, employees e, locations l
where d.department_id = e.department_id
order by d.department_id;