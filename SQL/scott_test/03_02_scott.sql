-- 1. EMP 테이블에서 scott의 정보를 사원번호,성명,담당업무(소문자로),부서번호를 출력하십시오.
-- LOWER(ename)= 'scott' : scott 의 담당업무(job)을 소문자로 출력
-- lower : 문자열 소문자로 변환
select empno,ename,lower(job),deptno
from emp
where lower(ename) = 'scott';

-- 2. EMP 테이블에서 scott의 정보를 사원번호,성명,담당업무,부서번호를 출력하십시오.
-- upper : 문자열 대문자로 변환
SELECT empno, ename,job,deptno
from emp
where ename = upper('scott');

--3. DEPT 테이블에서 첫 글자만 대문자로 변환하여 모든 정보를 출력하십시오.
-- INITCAP : 첫글자 대문자로 변환
SELECT deptno , INITCAP(dname), INITCAP(loc)
FROM dept;

-- 4. EMP 테이블에서 10번 부서에 대하여 사원번호,성명,담당업무를 출력하고 이후에는
-- 사원번호와 성명을 합쳐서 E_NAME 이라는 별명을 이용하여 출력하고,
-- 사원명과 사원번호를 합쳐서 E_EMPNO 이라는 별명으로 출력하고,
-- 마지막으로는 사원명과 담당업무를 합쳐서 E_JOB 이라는 별명으로 출력하십시오.
-- concat : 문자열 연결
select empno,ename,job,
concat(empno,ename)e_name,
concat(ename,empno)e_empno,
concat(ename,job)e_job
from emp
where deptno = 10;

-- 5. EMP 테이블에서 이름의 첫글자가 ‘K’ 보다 크고 ‘Y’보다 적은 사원 정보를 
-- 사원번호, 이름, 업무, 급여, 부서번호 순으로 출력하십시오. 단 이름순으로 정렬하십시오.
-- substr : 문자열에서 문자 위치로부터 문자 길이만큼 문자열 추출
select empno,ename,job,sal,deptno
from emp
-- substr(ename,1,1) : 이름에서 1번째 위치의 1자리
where substr(ename,1,1) > 'K' and substr(ename,1,1)< 'Y'
ORDER BY ename;

-- 6. EMP 테이블에서 20번 부서 중  이름의 길이 및 급여의 자릿수를
-- 사원번호, 이름, 이름의 자릿수(글자수), 급여, 급여의 자릿수 순으로 출력하십시오.
-- length : 문자열의  길이 반환
SELECT empno,ename,length(ename),sal,length(sal)
from emp
where deptno = 20;

-- 7. EMP 테이블에서 이름 중 ‘L’자의 위치를 출력하십시오.
-- instr : 문자열 중에서 지정한 문자가 처음 나타나는 위치를 숫자로 반환
SELECT ename,instr(ename,'L')e_null,
-- instr(ename,'L',1,1)e_11 : 컬럼ename,'찾는문자열L',1(시작위치),1(첫번째))별칭(e_11)
instr(ename,'L',1,1)e_11,
-- ename에서 'L'을 1부터 찾아라 그중 2번째에 있는 위치를 반환
instr(ename,'L',1,2)e_12,
-- ename에서 'L'을 4부터 찾고 그중 첫번째에 있는 위치를 반환
instr(ename,'L',4,1)e_41,
-- ename에서 'L'을 4부터 찾고 그중 2번째에 있는 위치를 반환
instr(ename,'L',4,2)e_42
from emp
order by ename;

-- 8. 아래의 보기와 같이 출력할 수 있도록 SQL을 작성하십시오.
-- ENAME      이름              급여        
-- ---------- --------------- ----------
-- KING       ***********KING ******5000
-- CLARK      **********CLARK ******2450
-- MILLER     *********MILLER ******1300

-- LPAD : 지정된 자리수 n부터 왼쪽에 남은 공간에 exp1을 채운다
-- LPAD(ename,15,'*')"이름" : ename문자열을 15자리까지 만들고 남는 왼쪽 공간에 *을 채우고 별칭은 이름으로 한다
select ename,LPAD(ename,15,'*')"이름",
LPAD(sal,10,'*')"급여"
from emp
where deptno = 10;
?
-- 9. 아래의 보기와 같이 출력될 수 있도록 SQL을 작성하십시오.
-- DEPTNO DNAME          RPAD(DNAME,20,'*')  
-- ---------- -------------- --------------------
-- 10 ACCOUNTING     ACCOUNTING    ******
-- 20 RESEARCH       RESEARCH      ******
-- 30 SALES          SALES         ******
-- 40 OPERATIONS     OPERATIONS    ******

-- RPAD(dname,20,'*') : dname에서 총문자길이(20),채움문자(*)
select deptno,dname,RPAD(dname,20,'*')
from dept;

-- 10. EMP 테이블에서 10번 부서에 대하여 담당 업무 중 좌측에 ‘A’를 삭제하고 급여 중 좌측의 1을 삭제하여 출력하십시오
-- LTRIM(job,'A') : job의 왼쪽의 A를 삭제
-- LTRIM(sal,1) : sal의 왼쪽의 1을 삭제
SELECT ename,job,ltrim(job,'A'),sal,ltrim(sal,1)
FROM emp
where deptno = 10;

-- 11. EMP 테이블에서 10번 부서에 대하여 담당 업무 중 우측에 ‘T’를 삭제하고 급여 중 우측의 0을 삭제하여 출력하십시오. 
-- RTRIM(job,'T') : job의 오른쪽 T삭제
-- RTRIM(sal,0) : sal의 오른쪽 0 삭제
select ename, job,rtrim(job,'T'),sal,rtrim(sal,0)
from emp
where deptno = 10;

-- 12. EMP 테이블에서 JOB에 ‘A’를 ‘$’로 바꾸어 출력하십시오.
-- REPLACE(job,'A','$') : job에서 A를 $로 바꾸어라
select ename,job,replace(job,'A','$'),sal
from emp;
?
-- 13. 숫자 함수 : 반올림(round)
-- round(1234.5678) : 1234.5678 을 반올림 하여 출력
select round(4567.678),round(1234.5555),
round(789.1234),round(2345.1234)
from dual;

-- 14. 숫자 함수 : 절삭(trunc)
-- trunc(15.79,1) : 점1의자리 뒤로 절삭
-- trunc(1422.654,-2) : 정수부 2의자리에서 절삭
-- trunc(153.798,0) : 소숫점 아예 절삭 
select trunc(15.79,1),trunc(1234.567,2),
trunc(1422.654,-2),trunc(153.798,0)
from dual;

-- 15. EMP 테이블에서 급여를 30으로 나눈 나머지를 구하여 출력하십시오.
-- 숫자 함수 : 나머지(mod)
-- mod(sal,30) : sal을 30으로 나눈다
select sal,mod(sal,30)
from emp

-- 16. EMP 테이블에서 20번 부서 중 이름과 담당 업무를 연결하여 출력하십시오. 
-- 단, 아래 보기와 같이 담당 업무를 이름에서 줄바꾸어서 출력하십시오.
-- ?참고로 ASCII 코드표상에서 10은 줄바꿈(line feed)에 해당되는 코드값입니다.
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
-- || : 문자열 연결
-- chr(10) : ASCII 코드표상에서 10은 줄바꿈(line feed)에 해당되는 코드값
select empno,ename,job,ename || chr(10)||job
from emp;

-- 17. EMP 테이블에서 사원현황을 아래와 같이 출력하되 현재까지 근무일수가 몇주 몇일인지를 출력하십시오. 
-- 단, 근무일수가 많은 사람 순으로 출력하십시오.
-- 날짜 함수 : sysdate
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

--18. EMP 테이블에서 10번 부서 중 현재까지의 근무 월수를 계산하여 아래 예시와 같이 출력되도록 작성하십시오.
-- 날짜 함수 : MONTHS_BETWEEN
-- ENAME      HIREDATE   SYSDATE     M_BETWEEN  T_BETWEEN
-- ---------- ---------- ---------- ---------- ----------
-- CLARK      1981-01-09 2020-04-17 471.274051        471
-- KING       1981-11-17 2020-04-17        461        461
-- MILLER     1982-01-23 2020-04-17 458.822438        458
-- MONTHS_BETWEEN : 날짜와 날짜 사이의 개월수 출력하는 함수
select ename,hiredate,sysdate,
months_between(sysdate,hiredate)"M_METWEEN",
TRUNC(months_between(sysdate,hiredate),0)"T_BETWEEN"
from emp
where deptno = 10
order by months_between(sysdate,hiredate)desc;

-- 19. EMP 테이블에서 10번 부서 중 입사 일자로부터 5개월이 지난 후 날짜를 계산하여 아래 예시와 같이 출력되도록 작성하십시오.
-- 날짜 함수 : ADD_MONTHS
-- ENAME      HIREDATE   A_MONTH   
-- ---------- ---------- ----------
-- MILLER     1982-01-23 1982-06-23
-- KING       1981-11-17 1982-04-17
-- CLARK      1981-01-09 1981-06-09
?-- add_months : 특정 개월수를 더한 날짜 출력
select ename, hiredate,add_months(hiredate,5)A_MONTH
from emp
where deptno = 10
order by hiredate desc;

-- 20. EMP 테이블에서 입사한 달의 근무 일수를 계산하여 아래와 같이 출력하십시오. 
-- 단, 토요일과 일요일도 근무 일수에 포함합니다.
-- 날짜 함수 : LAST_DAY
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
-- last_day : 해당 날짜가 속한달의 마지막 날짜를 반환한다
select empno,ename,hiredate,last_day(hiredate)i_last,
-- 해당날짜의 마지막 날짜 - 고용된날짜 = 남은 날짜
last_day(hiredate) -hiredate i_day
from emp
order by last_day(hiredate)-hiredate desc;

-- 21. EMP 테이블에서 10번 부서 중 입사 일자를 아래의 출력 보기와 같은 형식으로 작성하십시오.
-- ENAME      HIREDATE   T_HIREDATE       T_KOR              
-- ---------- ---------- ---------------- -------------------
-- MILLER     1982-01-23 23 1월 1982      1982년 01월 23일   
-- KING       1981-11-17 17 11월 1981     1981년 11월 17일   
-- CLARK      1981-01-09 9 1월 1981       1981년 01월 09일   
select ename , hiredate , to_char(hiredate,'fmDD Month YYYY')t_horedate,
to_char(hiredate,'YYYY"년"MM"월"DD"일"')t_kor
from emp
where deptno = 10
ORDER by hiredate desc;

-- 22. EMP 테이블에서 부서 20중 급여 앞에 $를 삽입하고 3자리마다 ,를 출력하십시오.
-- EMPNO ENAME      JOB              SAL 달러       
-- ---------- ---------- --------- ---------- ---------
-- 7902 FORD       ANALYST         3000    $3,000
-- 7788 SCOTT      ANALYST         3000    $3,000
-- 7566 JONES      MANAGER         2975    $2,975
-- 7876 ADAMS      CLERK           1100    $1,100
-- 7369 SMITH      CLERK            800      $800
select empno,ename,job,sal,to_char(sal,'$999,999')"달러"
from emp
where deptno = 20
order by sal desc;

23. 1981년 2월 22일에 입사한 사원의 정보를 이름, 업무, 입사일자를 아래와 같은 형식으로 출력하십시오.
-- ENAME      JOB       T_HIRE           
-- ---------- --------- -----------------
-- WARD       SALESMAN  2월  22, 1981    
select ename, job,to_char(hiredate,'Month DD, YYYY')t_hire
from emp
WHERE hiredate = TO_DATE('1981-02-22','YYYY-MM-DD');
-- to_char과 포멧 맞추기위해 to_date사용하는것이 좋다
-- where hiredate = '81/02/22'; => 내가 푼것