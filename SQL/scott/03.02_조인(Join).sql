SELECT e.empno,e.ename,e.sal,d.dname,d.loc

FROM dept d,emp e

WHERE d.deptno = e.deptno AND e.job = 'SALESMAN';