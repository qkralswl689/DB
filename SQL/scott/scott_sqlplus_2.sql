-- Compute

BREAK ON job SKIP 1 ON REPORT
COMPUTE SUM OF sal ON job REPORT

-- TTITLE�� BTITLE ���

TTITLE '����� ������|���� ���'
BTITLE 'GOOD BY'

------------------------------------
-- ġȯ ����(&, && ��)
------------------------------------
-- EMP ���̺��� �μ���ȣ�� �Է¹޾� ���� ��ȸ�� �� �ִ� SELECT������ �ۼ��Ͻʽÿ�.
-- ����� SQL Developer���� �����ϸ� ������ �Է��� �� �ִ� �˾��� ��ϴ�.
-- ġȯ ������ �ش�Ǵ� ���� dept_no�� 10�� �Է��غ��ϴ�.
SELECT empno,ename,job,hiredate,deptno
FROM emp
WHERE deptno = &dept_no;

-- ������)
SQL> SELECT empno,ename,job,hiredate,deptno
  2  FROM emp
  3  WHERE deptno = &dept_no;
Enter value for dept_no: 10
old   3: WHERE deptno = &dept_no
new   3: WHERE deptno = 10

     EMPNO ENAME                JOB                HIREDATE     DEPTNO

---------- -------------------- ------------------ -------- ----------

      7839 KING                 PRESIDENT          81/11/17         10

      7782 CLARK                MANAGER            81/01/09         10

      7934 MILLER               CLERK              82/01/23         10
      

-- ����) SET VERIFY ON/OFF��ɾ �̿��Ͽ� 
-- SQL ��ɾ PL/SQL���� &�� �̿��� ġȯ �������� ����� �� 
-- ġȯ�Ǳ� ��/���� �ڼ��� ���� ���� ������ ���θ� ���� �Ѵ�. �⺻���� ON �̴�.

set verify off
select &list
from &tab
where rownum < 3;
list�� ���� �Է��Ͻʽÿ�: ename
tab�� ���� �Է��Ͻʽÿ�: emp

-- ������ ����)
ENAME     
----------
KING
BLAKE

set verify on;
select &list
from &tab
where rownum < 3;
list�� ���� �Է��Ͻʽÿ�: ename

-- ���� ��� ����)
ENAME     
----------
KING
BLAKE

����:select &list
from &tab
where rownum < 3
�ű�:select ename
from emp
where rownum < 3

ENAME     
----------
KING
BLAKE

-- EMP ���̺��� �̸��� �Է¹޾� ���� ��ȸ�� �� �ִ� SELECT������ �ۼ��Ͻʽÿ�.
-- scott�� �Է��غ��ϴ�.

SELECT empno,ename,job,hiredate,sal,deptno
FROM emp
WHERE UPPER(ename) = UPPER('&name');

-- ���� ���)
SQL> set verify on;
SQL> SELECT empno,ename,job,hiredate,sal,deptno
  2  FROM emp
  3  WHERE UPPER(ename) = UPPER('&name');
Enter value for name: scott
old   3: WHERE UPPER(ename) = UPPER('&name')
new   3: WHERE UPPER(ename) = UPPER('scott')

     EMPNO ENAME                JOB                HIREDATE        SAL

---------- -------------------- ------------------ -------- ----------

    DEPTNO
----------
      7788 SCOTT                ANALYST            82/12/09       3000

        20


