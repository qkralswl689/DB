-- 1. �μ��� "Finance"�� ��� �߿��� �ְ� �޿��� �޴� ���(��)�� �̸��� �޿��� ����Ͻʽÿ�.

-- first_name �� last_name ����� ������ �ΰ� �����ϰ� ����� �̶�� ��Ī, salary�� �޿� ��� ��Ī���� ����ض�
select (first_name||' '||last_name) "�����" ,salary "�޿�"
-- employees ���̺�κ���
from employees
-- department_id �� 
-- department_name �� 'Finance' �� 
-- departments ���̺���
-- department_id �����ϰ� �� �ڷ�� employees ���̺����� department_id �ڷᰡ ��ġ�ϴ°��� ����
where department_id = (select department_id 
                       from departments
                       where department_name = 'Finance')
-- �׸��� salary�� 
-- department_name �� 'Finance' ��
-- departments ���̺���
--  department_id �����ϰ�  employees ���̺����� department_id �ڷᰡ ��ġ�ϴ°� �߿�
-- max(salary) �� �ڷ�� employees ���̺� salary �� ��ġ�ϴ°��� ����
and salary = (select max(salary)
              from employees
              where department_id =(select department_id
                                    from departments
                                    where department_name = 'Finance'));
                                    
-- 2. ��������(Oxford) �ÿ� �����ϴ� ������ �̸��� ������������ ����Ͻʽÿ�. 
-- first_name �� last_name ���̿� ������ �ΰ� ����Ѵ�
select first_name||' '||last_name
-- employees ���̺�κ���
from employees
-- department_id�� 
-- d.location_id �� l.location_id  �� ���� l.city �� 'Oxford' �� �ڷ���
-- d.department_id �� ����Ʈ�Ѵ� 
-- departments d, locations l ���̺�κ���
-- ������ ����� �ڷᰡ department_id  �� ������ 
where department_id = (select d.department_id
                       from departments d, locations l
                       where d.location_id = l.location_id
                       and l.city = 'Oxford')
-- first_name �������� ���� �����Ѵ�                     
order by first_name;                       
                   
-- 2�� �������� ��� ���� ��
SELECT e.first_name ||' '|| e.last_name
from employees e, departments d, locations l
where e.department_id = d.department_id
and d.location_id = l.location_id
and l.city = 'Oxford'
order by first_name;

-- 3. �����ϰ� ������� 2002�� 1�� 1�� ������ �ٹ��ϱ� ������ ������� ���̵�� �̸�(������ ���ļ� �����)
-- �� ȭ�鿡 �μ��Ͻʽÿ� , ��, hr ������ �ִ� ���̺��� �ۼ��ϵ� 
-- �ۼ��� ���� ����(equi-join) �� ��������(sub query)�� �̿��Ͽ� ���� �ۼ��ϵ��� �մϴ�.

-- (��������) ���� Ǭ��
select e.employee_id ,e.first_name ||' '|| e.last_name
from employees e, job_history j
where e.employee_id = j.employee_id
and j.start_date > '02/01/01';

-- ��
-- �ߺ� ���� �ϱ����� distinct ���
SELECT DISTINCT e.employee_id,
-- ��Ī ���
                (e.first_name || ' ' || e.last_name) AS "�̸�"
FROM employees e, job_history j
WHERE e.employee_id = j.employee_id
-- 2002/01/01 �����̱⶧���� �ε�ȣ < ���
AND  j.start_date < '2002/01/01';   

-- (��������) ����Ǭ��
select employee_id ,first_name ||' '|| last_name
from employees 
where employee_id = (select employee_id
                       from job_history
                       where start_date > '20/01/01');

-- ��  
SELECT DISTINCT e.employee_id,
               (e.first_name || ' ' || e.last_name) AS "�̸�"
FROM employees e
-- ���������� �˻��ǹǷ� in ���
WHERE e.employee_id IN ( SELECT j.employee_id
                         FROM job_history j
                         WHERE j.start_date < '2002/01/01' ); 

-- 4. 2005�� 4�� 1�� ���Ͽ� �ٹ����̾�����,   
--  �̱� �þ�Ʋ(Seattle)�� ��ġ�� �μ����� �ٹ��ߴ� �ٷ��ڵ��� �̸��� ������������ ����ϵ��� ��ġ�Ͻʽÿ�.
-- ��ø ����(inner query)�� ����Ͽ� Ǯ���ϵ��� �մϴ�.

-- ����Ǭ��
select employee_id,first_name||' '||last_name "�̸�"
from employees 
where employee_id in(select employee_id
                     from job_history j
                     where(start_date <= '2005/04/01'
                     and end_date >= '2005/04/01')                     
and j.department_id in(select d.department_id
                       from departments d
                       where d.location_id =(select location_id
                                             from locations
                                             where city = 'Seattle'))
                      )                 
order by first_name ;                                            

--  ��1)
-- employee_id �� first_name�� last_name�� ������ �ΰ� �����ϰ� "�̸�" �̶�� ��Ī���� ����Ѵ�
select employee_id,first_name||' '||last_name "�̸�"
-- employees e ���̺�κ���
from employees e
-- ù��° ��������
-- job_history j ���̺� �ִ� j.department_id ���� employee_id ��
-- employee_id �� ������
-- �ι�° ��������
-- job_history ���̺��� department_id �߿� start_date �� '2005/04/01' ���� �۰ų� ����
-- end_date �� '2005/04/01' ���� ũ�ų� ����������
-- ����° �������� : ù��° ���� �������� and ����
-- departments d ���̺��� department_id �߿� d.location_id �� ������
-- �׹�° �������� 
-- locations ���̺��� city �� 'Seattle' �� location_id ������ 

where employee_id in (select employee_id 
                      FROM job_history j
                      where j.department_id in(select department_id 
                                                FROM job_history
                                                WHERE start_date <= '2005/04/01'
                                                and end_date >= '2005/04/01')
                      and department_id in(select department_id
                                           from departments d
                                           where d.location_id in(select location_id
                                                                  from locations
                                                                  where city = 'Seattle')
                )
                )
ORDER BY "�̸�";                                                                  

-- ��2) 
SELECT employee_id, first_name ||' '|| last_name "�̸�"
FROM employees e
WHERE employee_id IN (SELECT j.employee_id
                      FROM job_history j
                      WHERE (j.start_date < '2005/04/01'
                      AND j.end_date > '2005/04/01')               
AND j.department_id IN (SELECT d.department_id
                        FROM departments d
                        WHERE d.location_id = (SELECT l.location_id
                                               FROM locations l
                                               WHERE l.city = 'Seattle'))
                        )
ORDER BY "�̸�";



