-- 1. (scott 계정) 업무가 SALESMAN인 사원만 사원번호,이름,급여,부서명,근무지를 출력하십시오.
select e.empno, e.ename, e.sal, d.dname, d.loc
from dept d, emp e
where d.deptno = e.deptno and e.job = 'SALESMAN';

-- 1-1) join ~ using 사용
select e.empno, e.ename, e.sal,d.dname, d.loc
from dept d join emp e
using(deptno)
where e.job = 'SALESMAN';

-- 1-2) natural join 사용
select e.empno, e.ename,e.sal,d.dname,d.loc
from dept d natural join emp e
where e.job = 'SALESMAN';

-- 1-3) inner join ~ on 사용
select e.empno, e.ename, e.sal, d.dname, d.loc
from dept d inner join emp e
on d.deptno = e.deptno
where e.job = 'SALESMAN';

-- 1-4) join on 사용
select e.empno, e.ename, e.sal, d.dname, d.loc
from dept d join emp e
on e.deptno = d.deptno
where e.job = 'SALESMAN';