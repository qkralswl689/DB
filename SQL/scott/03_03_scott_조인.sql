-- 1. (scott 계정) 업무가 SALESMAN인 사원만 사원번호,이름,급여,부서명,근무지를 출력하십시오.
select e.empno, e.ename, e.sal,d.deptno,d.loc
from emp e, dept d
where e.job = 'SALESMAN' and e.deptno = d.deptno;

-- 1-1) join,using 사용
select e.empno, e.ename, e.sal, d.dname,d.loc
from dept d JOIN emp e
USING(deptno)
where e.job = 'SALESMAN';

-- 1-2) natural join 사용
select e.empno, e.ename, e.sal, d.dname,d.loc
from dept d natural join emp e
where e.job = 'SALESMAN';


