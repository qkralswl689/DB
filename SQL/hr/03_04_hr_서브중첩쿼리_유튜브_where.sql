select * from hr.employees;
select * from hr.departments;


select * from hr.employees a
-- a.department_id�� ���������� �ش�
-- b.location_id = 1800 �� 
-- hr.departments b �μ�����
-- b.department_id �μ����̵� ����Ʈ �Ѵ���
-- a.department_id �μ��� ���̵� ������ ����� �̾Ƴ��� ����
where a.department_id = (select b.department_id
                         from hr.departments b
                         where b.location_id = 1800);
 