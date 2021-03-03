-- 사원번호가 101번이면서 업무 아이디가 'AC_ACCOUNT'인 사원의 현황을 아래와 같이 출력할 수 있도록
-- "=" 연산자를 활용한 동등 조인(equi join)을 사용하여 DQL(Data Query Language) 구문을 작성하십시오.
select e.first_name || ' ' || e.last_name "사원명",
j.job_id "부서 아이디",j.start_date "업무 시작일",j.end_date "업무 종료일"
from employees e, job_history j
where e.employee_id = j.employee_id 
and e.employee_id = 101
and j.job_id = 'AC_ACCOUNT';

DESC employees;
