-- 1. EMP ���̺��� scott�� ������ �����ȣ,����,������(�ҹ��ڷ�),�μ���ȣ�� ����Ͻʽÿ�.
select empno,ename,lower(job),deptno
from emp
where lower(ename) = 'scott';

-- 2. EMP ���̺��� scott�� ������ �����ȣ,����,������,�μ���ȣ�� ����Ͻʽÿ�.
select empno,ename,job,deptno
from emp
where ename = upper('scott');
-- where ename = 'SCOTT'; ����Ǭ��

-- 3. DEPT ���̺��� ù ���ڸ� �빮�ڷ� ��ȯ�Ͽ� ��� ������ ����Ͻʽÿ�.
select deptno, INITCAP(dname),initcap(loc)
from dept;

-- 4. EMP ���̺��� 10�� �μ��� ���Ͽ� �����ȣ,����,�������� ����ϰ� 
-- ���Ŀ��� �����ȣ�� ������ ���ļ� E_NAME �̶�� ������ �̿��Ͽ� ����ϰ�,
-- ������ �����ȣ�� ���ļ� E_EMPNO �̶�� �������� ����ϰ�,
-- ���������δ� ������ �������� ���ļ� E_JOB �̶�� �������� ����Ͻʽÿ�.
select empno,ename,job,concat(empno,ename)"e_name",
concat(ename,empno)"e_empno",concat(ename,job)"e_job"
from emp
where deptno = 10;

-- 5. EMP ���̺��� �̸��� ù���ڰ� ��K�� ���� ũ�� ��Y������ ���� ��� ������
-- �����ȣ, �̸�, ����, �޿�, �μ���ȣ ������ ����Ͻʽÿ�. �� �̸������� �����Ͻʽÿ�.
select empno,ename,job,sal,deptno
from emp
where substr(ename,1,1) > 'K' and substr(ename,1,1)< 'Y'
ORDER BY ename;

-- 6. EMP ���̺��� 20�� �μ� ��  �̸��� ���� �� �޿��� �ڸ����� 
-- �����ȣ, �̸�, �̸��� �ڸ���(���ڼ�), �޿�, �޿��� �ڸ��� ������ ����Ͻʽÿ�.
select empno, ename,length(ename),sal,length(sal)
from emp
where deptno = 20;
