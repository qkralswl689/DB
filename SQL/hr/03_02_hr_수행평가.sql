-- �����ȣ�� 101���̸鼭 ���� ���̵� 'AC_ACCOUNT'�� ����� ��Ȳ�� �Ʒ��� ���� ����� �� �ֵ���
-- "=" �����ڸ� Ȱ���� ���� ����(equi join)�� ����Ͽ� DQL(Data Query Language) ������ �ۼ��Ͻʽÿ�.
select e.first_name || ' ' || e.last_name "�����",
j.job_id "�μ� ���̵�",j.start_date "���� ������",j.end_date "���� ������"
from employees e, job_history j
where e.employee_id = j.employee_id 
and e.employee_id = 101
and j.job_id = 'AC_ACCOUNT';

DESC employees;
