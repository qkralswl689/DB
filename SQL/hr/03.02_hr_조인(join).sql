-- 2. (hr 계정) 부서, 회원, 지역 테이블에서 아래와 같이 
-- 사원번호, 이름(별칭), 직무 아이디,부서 아이디, 부서명, 지역(별칭)을 동등 조인을 활용하여 조회하십시오.
-- select  e.employee_id, e.first_name "이름",e.last_name, d.department_id, d.department_name, l.city "지역"
-- from departments d, emoloyees e, location l;

-- 강사님 답
select e.employee_id,  
e.first_name || ' ' || e.last_name "이름", 
e.job_id, 
e.department_id,
d.department_name, 
l.city || ' ' || l.state_province "지역"
FROM departments d, employees e, locations l
where d.department_id = e.department_id
order by d.department_id;