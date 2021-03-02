-- 1. (scott ����) ������ SALESMAN�� ����� �����ȣ,�̸�,�޿�,�μ���,�ٹ����� ����Ͻʽÿ�.
select e.empno, e.ename, e.sal, d.dname, d.loc
from dept d, emp e
where d.deptno = e.deptno and e.job = 'SALESMAN';

-- 1-1) join ~ using ���
select e.empno, e.ename, e.sal,d.dname, d.loc
from dept d join emp e
using(deptno)
where e.job = 'SALESMAN';

-- 1-2) natural join ���
select e.empno, e.ename,e.sal,d.dname,d.loc
from dept d natural join emp e
where e.job = 'SALESMAN';

-- 1-3) inner join ~ on ���
select e.empno, e.ename, e.sal, d.dname, d.loc
from dept d inner join emp e
on d.deptno = e.deptno
where e.job = 'SALESMAN';

-- 1-4) join on ���
select e.empno, e.ename, e.sal, d.dname, d.loc
from dept d join emp e
on e.deptno = d.deptno
where e.job = 'SALESMAN';