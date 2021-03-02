-- 1. EMP ���̺��� scott�� ������ �����ȣ,����,������(�ҹ��ڷ�),�μ���ȣ�� ����Ͻʽÿ�.
-- LOWER(ename)= 'scott' : scott �� ������(job)�� �ҹ��ڷ� ���
-- lower : ���ڿ� �ҹ��ڷ� ��ȯ
select empno,ename,lower(job),deptno
from emp
where lower(ename) = 'scott';

-- 2. EMP ���̺��� scott�� ������ �����ȣ,����,������,�μ���ȣ�� ����Ͻʽÿ�.
-- upper : ���ڿ� �빮�ڷ� ��ȯ
SELECT empno, ename,job,deptno
from emp
where ename = upper('scott');

--3. DEPT ���̺��� ù ���ڸ� �빮�ڷ� ��ȯ�Ͽ� ��� ������ ����Ͻʽÿ�.
-- INITCAP : ù���� �빮�ڷ� ��ȯ
SELECT deptno , INITCAP(dname), INITCAP(loc)
FROM dept;

-- 4. EMP ���̺��� 10�� �μ��� ���Ͽ� �����ȣ,����,�������� ����ϰ� ���Ŀ���
-- �����ȣ�� ������ ���ļ� E_NAME �̶�� ������ �̿��Ͽ� ����ϰ�,
-- ������ �����ȣ�� ���ļ� E_EMPNO �̶�� �������� ����ϰ�,
-- ���������δ� ������ �������� ���ļ� E_JOB �̶�� �������� ����Ͻʽÿ�.
-- concat : ���ڿ� ����
select empno,ename,job,
concat(empno,ename)e_name,
concat(ename,empno)e_empno,
concat(ename,job)e_job
from emp
where deptno = 10;

-- 5. EMP ���̺��� �̸��� ù���ڰ� ��K�� ���� ũ�� ��Y������ ���� ��� ������ 
-- �����ȣ, �̸�, ����, �޿�, �μ���ȣ ������ ����Ͻʽÿ�. �� �̸������� �����Ͻʽÿ�.
-- substr : ���ڿ����� ���� ��ġ�κ��� ���� ���̸�ŭ ���ڿ� ����
select empno,ename,job,sal,deptno
from emp
-- substr(ename,1,1) : �̸����� 1��° ��ġ�� 1�ڸ�
where substr(ename,1,1) > 'K' and substr(ename,1,1)< 'Y'
ORDER BY ename;

-- 6. EMP ���̺��� 20�� �μ� ��  �̸��� ���� �� �޿��� �ڸ�����
-- �����ȣ, �̸�, �̸��� �ڸ���(���ڼ�), �޿�, �޿��� �ڸ��� ������ ����Ͻʽÿ�.
-- length : ���ڿ���  ���� ��ȯ
SELECT empno,ename,length(ename),sal,length(sal)
from emp
where deptno = 20;

-- 7. EMP ���̺��� �̸� �� ��L������ ��ġ�� ����Ͻʽÿ�.
-- instr : ���ڿ� �߿��� ������ ���ڰ� ó�� ��Ÿ���� ��ġ�� ���ڷ� ��ȯ
SELECT ename,instr(ename,'L')e_null,
-- instr(ename,'L',1,1)e_11 : �÷�ename,'ã�¹��ڿ�L',1(������ġ),1(ù��°))��Ī(e_11)
instr(ename,'L',1,1)e_11,
-- ename���� 'L'�� 1���� ã�ƶ� ���� 2��°�� �ִ� ��ġ�� ��ȯ
instr(ename,'L',1,2)e_12,
-- ename���� 'L'�� 4���� ã�� ���� ù��°�� �ִ� ��ġ�� ��ȯ
instr(ename,'L',4,1)e_41,
-- ename���� 'L'�� 4���� ã�� ���� 2��°�� �ִ� ��ġ�� ��ȯ
instr(ename,'L',4,2)e_42
from emp
order by ename;

-- 8. �Ʒ��� ����� ���� ����� �� �ֵ��� SQL�� �ۼ��Ͻʽÿ�.
-- ENAME      �̸�              �޿�        
-- ---------- --------------- ----------
-- KING       ***********KING ******5000
-- CLARK      **********CLARK ******2450
-- MILLER     *********MILLER ******1300

-- LPAD : ������ �ڸ��� n���� ���ʿ� ���� ������ exp1�� ä���
-- LPAD(ename,15,'*')"�̸�" : ename���ڿ��� 15�ڸ����� ����� ���� ���� ������ *�� ä��� ��Ī�� �̸����� �Ѵ�
select ename,LPAD(ename,15,'*')"�̸�",
LPAD(sal,10,'*')"�޿�"
from emp
where deptno = 10;
?
-- 9. �Ʒ��� ����� ���� ��µ� �� �ֵ��� SQL�� �ۼ��Ͻʽÿ�.
-- DEPTNO DNAME          RPAD(DNAME,20,'*')  
-- ---------- -------------- --------------------
-- 10 ACCOUNTING     ACCOUNTING    ******
-- 20 RESEARCH       RESEARCH      ******
-- 30 SALES          SALES         ******
-- 40 OPERATIONS     OPERATIONS    ******

-- RPAD(dname,20,'*') : dname���� �ѹ��ڱ���(20),ä����(*)
select deptno,dname,RPAD(dname,20,'*')
from dept;

-- 10. EMP ���̺��� 10�� �μ��� ���Ͽ� ��� ���� �� ������ ��A���� �����ϰ� �޿� �� ������ 1�� �����Ͽ� ����Ͻʽÿ�
-- LTRIM(job,'A') : job�� ������ A�� ����
-- LTRIM(sal,1) : sal�� ������ 1�� ����
SELECT ename,job,ltrim(job,'A'),sal,ltrim(sal,1)
FROM emp
where deptno = 10;

-- 11. EMP ���̺��� 10�� �μ��� ���Ͽ� ��� ���� �� ������ ��T���� �����ϰ� �޿� �� ������ 0�� �����Ͽ� ����Ͻʽÿ�. 
-- RTRIM(job,'T') : job�� ������ T����
-- RTRIM(sal,0) : sal�� ������ 0 ����
select ename, job,rtrim(job,'T'),sal,rtrim(sal,0)
from emp
where deptno = 10;

-- 12. EMP ���̺��� JOB�� ��A���� ��$���� �ٲپ� ����Ͻʽÿ�.
-- REPLACE(job,'A','$') : job���� A�� $�� �ٲپ��
select ename,job,replace(job,'A','$'),sal
from emp;
?
-- 13. ���� �Լ� : �ݿø�(round)
-- round(1234.5678) : 1234.5678 �� �ݿø� �Ͽ� ���
select round(4567.678),round(1234.5555),
round(789.1234),round(2345.1234)
from dual;

-- 14. ���� �Լ� : ����(trunc)
-- trunc(15.79,1) : ��1���ڸ� �ڷ� ����
-- trunc(1422.654,-2) : ������ 2���ڸ����� ����
-- trunc(153.798,0) : �Ҽ��� �ƿ� ���� 
select trunc(15.79,1),trunc(1234.567,2),
trunc(1422.654,-2),trunc(153.798,0)
from dual;

-- 15. EMP ���̺��� �޿��� 30���� ���� �������� ���Ͽ� ����Ͻʽÿ�.
-- ���� �Լ� : ������(mod)
-- mod(sal,30) : sal�� 30���� ������
select sal,mod(sal,30)
from emp

-- 16. EMP ���̺��� 20�� �μ� �� �̸��� ��� ������ �����Ͽ� ����Ͻʽÿ�. 
-- ��, �Ʒ� ����� ���� ��� ������ �̸����� �ٹٲپ ����Ͻʽÿ�.
-- ?����� ASCII �ڵ�ǥ�󿡼� 10�� �ٹٲ�(line feed)�� �ش�Ǵ� �ڵ尪�Դϴ�.
-- EMPNO ENAME      JOB       ENAME||CHR(10)||JOB 
---------- ---------- --------- --------------------
-- 7566 JONES      MANAGER   JONES               
--                 MANAGER             
-- 7902 FORD       ANALYST   FORD                
--                 ANALYST             
-- 7369 SMITH      CLERK     SMITH               
--                 CLERK               
-- 7788 SCOTT      ANALYST   SCOTT               
--                 ANALYST             
-- EMPNO ENAME      JOB       ENAME||CHR(10)||JOB 
-- ---------- ---------- --------- --------------------
-- 7876 ADAMS      CLERK     ADAMS               
--                 CLERK  
-- || : ���ڿ� ����
-- chr(10) : ASCII �ڵ�ǥ�󿡼� 10�� �ٹٲ�(line feed)�� �ش�Ǵ� �ڵ尪
select empno,ename,job,ename || chr(10)||job
from emp;

-- 17. EMP ���̺��� �����Ȳ�� �Ʒ��� ���� ����ϵ� ������� �ٹ��ϼ��� ���� ���������� ����Ͻʽÿ�. 
-- ��, �ٹ��ϼ��� ���� ��� ������ ����Ͻʽÿ�.
-- ��¥ �Լ� : sysdate
-- ENAME      HIREDATE   SYSDATE    Total Days      WEEKS       DAYS
-- ---------- ---------- ---------- ---------- ---------- ----------
-- SMITH      1980-12-17 2020-04-17 14366.4946       2052          2
-- CLARK      1981-01-09 2020-04-17 14343.4946       2049          0
-- ALLEN      1981-02-20 2020-04-17 14301.4946       2043          0
-- WARD       1981-02-22 2020-04-17 14299.4946       2042          5
-- JONES      1981-04-02 2020-04-17 14260.4946       2037          1
-- BLAKE      1981-05-01 2020-04-17 14231.4946       2033          0
-- TURNER     1981-09-08 2020-04-17 14101.4946       2014          3
-- MARTIN     1981-09-28 2020-04-17 14081.4946       2011          4
-- KING       1981-11-17 2020-04-17 14031.4946       2004          3
-- JAMES      1981-12-03 2020-04-17 14015.4946       2002          1
-- FORD       1981-12-03 2020-04-17 14015.4946       2002          1
-- ENAME      HIREDATE   SYSDATE    Total Days      WEEKS       DAYS
-- ---------- ---------- ---------- ---------- ---------- ----------
-- MILLER     1982-01-23 2020-04-17 13964.4946       1994          6
-- SCOTT      1982-12-09 2020-04-17 13644.4946       1949          1
-- ADAMS      1983-01-12 2020-04-17 13610.4946       1944          2
select ename,hiredate,sysdate,sysdate - hiredate "Total Days",
trunc((sysdate - hiredate)/7,0)Weeks,
round(mod((sysdate-hiredate),7),0)DAYS
from emp
order by sysdate - hiredate desc;

--18. EMP ���̺��� 10�� �μ� �� ��������� �ٹ� ������ ����Ͽ� �Ʒ� ���ÿ� ���� ��µǵ��� �ۼ��Ͻʽÿ�.
-- ��¥ �Լ� : MONTHS_BETWEEN
-- ENAME      HIREDATE   SYSDATE     M_BETWEEN  T_BETWEEN
-- ---------- ---------- ---------- ---------- ----------
-- CLARK      1981-01-09 2020-04-17 471.274051        471
-- KING       1981-11-17 2020-04-17        461        461
-- MILLER     1982-01-23 2020-04-17 458.822438        458
-- MONTHS_BETWEEN : ��¥�� ��¥ ������ ������ ����ϴ� �Լ�
select ename,hiredate,sysdate,
months_between(sysdate,hiredate)"M_METWEEN",
TRUNC(months_between(sysdate,hiredate),0)"T_BETWEEN"
from emp
where deptno = 10
order by months_between(sysdate,hiredate)desc;

-- 19. EMP ���̺��� 10�� �μ� �� �Ի� ���ڷκ��� 5������ ���� �� ��¥�� ����Ͽ� �Ʒ� ���ÿ� ���� ��µǵ��� �ۼ��Ͻʽÿ�.
-- ��¥ �Լ� : ADD_MONTHS
-- ENAME      HIREDATE   A_MONTH   
-- ---------- ---------- ----------
-- MILLER     1982-01-23 1982-06-23
-- KING       1981-11-17 1982-04-17
-- CLARK      1981-01-09 1981-06-09
?-- add_months : Ư�� �������� ���� ��¥ ���
select ename, hiredate,add_months(hiredate,5)A_MONTH
from emp
where deptno = 10
order by hiredate desc;

-- 20. EMP ���̺��� �Ի��� ���� �ٹ� �ϼ��� ����Ͽ� �Ʒ��� ���� ����Ͻʽÿ�. 
-- ��, ����ϰ� �Ͽ��ϵ� �ٹ� �ϼ��� �����մϴ�.
-- ��¥ �Լ� : LAST_DAY
-- EMPNO ENAME      HIREDATE   L_LAST          L_DAY
-- ---------- ---------- ---------- ---------- ----------
-- 7698 BLAKE      1981-05-01 1981-05-31         30
-- 7900 JAMES      1981-12-03 1981-12-31         28
-- 7902 FORD       1981-12-03 1981-12-31         28
-- 7566 JONES      1981-04-02 1981-04-30         28
-- 7782 CLARK      1981-01-09 1981-01-31         22
-- 7844 TURNER     1981-09-08 1981-09-30         22
-- 7788 SCOTT      1982-12-09 1982-12-31         22
-- 7876 ADAMS      1983-01-12 1983-01-31         19
-- 7369 SMITH      1980-12-17 1980-12-31         14
-- 7839 KING       1981-11-17 1981-11-30         13
-- 7934 MILLER     1982-01-23 1982-01-31          8
-- EMPNO ENAME      HIREDATE   L_LAST          L_DAY
-- ---------- ---------- ---------- ---------- ----------
-- 7499 ALLEN      1981-02-20 1981-02-28          8
-- 7521 WARD       1981-02-22 1981-02-28          6
-- 7654 MARTIN     1981-09-28 1981-09-30          2
-- last_day : �ش� ��¥�� ���Ѵ��� ������ ��¥�� ��ȯ�Ѵ�
select empno,ename,hiredate,last_day(hiredate)i_last,
-- �ش糯¥�� ������ ��¥ - ���ȳ�¥ = ���� ��¥
last_day(hiredate) -hiredate i_day
from emp
order by last_day(hiredate)-hiredate desc;

-- 21. EMP ���̺��� 10�� �μ� �� �Ի� ���ڸ� �Ʒ��� ��� ����� ���� �������� �ۼ��Ͻʽÿ�.
-- ENAME      HIREDATE   T_HIREDATE       T_KOR              
-- ---------- ---------- ---------------- -------------------
-- MILLER     1982-01-23 23 1�� 1982      1982�� 01�� 23��   
-- KING       1981-11-17 17 11�� 1981     1981�� 11�� 17��   
-- CLARK      1981-01-09 9 1�� 1981       1981�� 01�� 09��   
select ename , hiredate , to_char(hiredate,'fmDD Month YYYY')t_horedate,
to_char(hiredate,'YYYY"��"MM"��"DD"��"')t_kor
from emp
where deptno = 10
ORDER by hiredate desc;

-- 22. EMP ���̺��� �μ� 20�� �޿� �տ� $�� �����ϰ� 3�ڸ����� ,�� ����Ͻʽÿ�.
-- EMPNO ENAME      JOB              SAL �޷�       
-- ---------- ---------- --------- ---------- ---------
-- 7902 FORD       ANALYST         3000    $3,000
-- 7788 SCOTT      ANALYST         3000    $3,000
-- 7566 JONES      MANAGER         2975    $2,975
-- 7876 ADAMS      CLERK           1100    $1,100
-- 7369 SMITH      CLERK            800      $800
select empno,ename,job,sal,to_char(sal,'$999,999')"�޷�"
from emp
where deptno = 20
order by sal desc;

23. 1981�� 2�� 22�Ͽ� �Ի��� ����� ������ �̸�, ����, �Ի����ڸ� �Ʒ��� ���� �������� ����Ͻʽÿ�.
-- ENAME      JOB       T_HIRE           
-- ---------- --------- -----------------
-- WARD       SALESMAN  2��  22, 1981    
select ename, job,to_char(hiredate,'Month DD, YYYY')t_hire
from emp
WHERE hiredate = TO_DATE('1981-02-22','YYYY-MM-DD');
-- to_char�� ���� ���߱����� to_date����ϴ°��� ����
-- where hiredate = '81/02/22'; => ���� Ǭ��