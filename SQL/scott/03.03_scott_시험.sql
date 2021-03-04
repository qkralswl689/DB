-- 오라클 데이터베이스의 scott 샘플 계정의 EMP 테이블에서 30번 부서 소속의 사원 현황에서
-- 사원번호를 "사원번호"라는 별칭으로 출력하고
-- 성명은 "사원명"이라는 별명을 이용하여 사원번호를 기준으로 내림차순 정렬로 출력하는 구문을 작성하십시오. 
select empno "사원번호",ename "사원명"
from emp
where deptno = 30
order by empno desc;