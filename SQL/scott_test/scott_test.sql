-- 사원 테이블 전체 조회
select * from emp;

SELECT e.empno, e.ename, d.dname
  FROM dept d 
 INNER JOIN emp e
    ON d.deptno = e.deptno;