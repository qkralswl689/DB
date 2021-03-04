select * from hr.employees;
select * from hr.departments;


select * from hr.employees a
-- a.department_id를 서브쿼리로 준다
-- b.location_id = 1800 인 
-- hr.departments b 부서에서
-- b.department_id 부서아이디를 셀렉트 한다음
-- a.department_id 부서의 아이디를 가지는 사원을 뽑아내는 쿼리
where a.department_id = (select b.department_id
                         from hr.departments b
                         where b.location_id = 1800);
 