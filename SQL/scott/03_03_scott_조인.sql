-- 1. (scott ����) ������ SALESMAN�� ����� �����ȣ,�̸�,�޿�,�μ���,�ٹ����� ����Ͻʽÿ�.
select e.empno, e.ename, e.sal,d.deptno,d.loc
from emp e, dept d
where e.job = 'SALESMAN' and e.deptno = d.deptno;

-- 1-1) join,using ���
select e.empno, e.ename, e.sal, d.dname,d.loc
from dept d JOIN emp e
USING(deptno)
where e.job = 'SALESMAN';

-- 1-2) natural join ���
select e.empno, e.ename, e.sal, d.dname,d.loc
from dept d natural join emp e
where e.job = 'SALESMAN';


