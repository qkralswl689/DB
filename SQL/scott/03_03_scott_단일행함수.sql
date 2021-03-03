-- 1. EMP 테이블에서 scott의 정보를 사원번호,성명,담당업무(소문자로),부서번호를 출력하십시오.
select empno,ename,lower(job),deptno
from emp
where lower(ename) = 'scott';

-- 2. EMP 테이블에서 scott의 정보를 사원번호,성명,담당업무,부서번호를 출력하십시오.
select empno,ename,job,deptno
from emp
where ename = upper('scott');
-- where ename = 'SCOTT'; 내가푼것

-- 3. DEPT 테이블에서 첫 글자만 대문자로 변환하여 모든 정보를 출력하십시오.
select deptno, INITCAP(dname),initcap(loc)
from dept;

-- 4. EMP 테이블에서 10번 부서에 대하여 사원번호,성명,담당업무를 출력하고 
-- 이후에는 사원번호와 성명을 합쳐서 E_NAME 이라는 별명을 이용하여 출력하고,
-- 사원명과 사원번호를 합쳐서 E_EMPNO 이라는 별명으로 출력하고,
-- 마지막으로는 사원명과 담당업무를 합쳐서 E_JOB 이라는 별명으로 출력하십시오.
select empno,ename,job,concat(empno,ename)"e_name",
concat(ename,empno)"e_empno",concat(ename,job)"e_job"
from emp
where deptno = 10;

-- 5. EMP 테이블에서 이름의 첫글자가 ‘K’ 보다 크고 ‘Y’보다 적은 사원 정보를
-- 사원번호, 이름, 업무, 급여, 부서번호 순으로 출력하십시오. 단 이름순으로 정렬하십시오.
select empno,ename,job,sal,deptno
from emp
where substr(ename,1,1) > 'K' and substr(ename,1,1)< 'Y'
ORDER BY ename;

-- 6. EMP 테이블에서 20번 부서 중  이름의 길이 및 급여의 자릿수를 
-- 사원번호, 이름, 이름의 자릿수(글자수), 급여, 급여의 자릿수 순으로 출력하십시오.
select empno, ename,length(ename),sal,length(sal)
from emp
where deptno = 20;
