-- ��� ���̺� ��ü ��ȸ
select * from emp;

SELECT e.empno, e.ename, d.dname
  FROM dept d 
 INNER JOIN emp e
    ON d.deptno = e.deptno;