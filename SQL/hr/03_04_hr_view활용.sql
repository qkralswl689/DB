-- create or replace view hr_emp_view1 : 뷰 생성 이미 hr_emp_view1과 같은 이름의 뷰가 존재할경우 덮어쓰기한다
-- hr_emp_view1 라는 뷰를 생성한다 
create or replace view hr_emp_view1 
-- 뷰의 내용은 
-- employees 테이블로부터 first_name||' '||last_name) "사원명",salary "급여" 를 출력한다
as select(first_name||' '||last_name) "사원명",salary "급여"
from employees
-- department_id 는 
-- departments 테이블에서 department_name = 'Finance' 인 department_id 와 같은 데이터를 
where department_id = (select department_id
                        from departments
                        where department_name = 'Finance')
-- 그리고 salary 는 
-- employees 테이블에서 department_id 가
-- departments 테이블에서 department_name = 'Finance' 인 department_id 와 같은 데이터에서
-- max(salary) : 급여가 제일 높은 데이터 를 
and salary = (select max(salary)
              from employees
              where department_id = (Select department_id
                                     from departments
                                     where department_name='Finance')
            );
 
-- hr_emp_view1 뷰 에서 사원명을 출력한다 
select 사원명 from hr_emp_view1;          