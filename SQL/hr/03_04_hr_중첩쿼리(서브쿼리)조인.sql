-- 1. 부서가 "Finance"인 사원 중에서 최고 급여를 받는 사원(들)의 이름과 급여를 출력하십시오.

-- first_name 과 last_name 가운데에 공백을 두고 연결하고 사원명 이라는 별칭, salary를 급여 라는 별칭으로 출력해라
select (first_name||' '||last_name) "사원명" ,salary "급여"
-- employees 테이블로부터
from employees
-- department_id 는 
-- department_name 이 'Finance' 인 
-- departments 테이블에서
-- department_id 선택하고 이 자료와 employees 테이블에서의 department_id 자료가 일치하는것을 선택
where department_id = (select department_id 
                       from departments
                       where department_name = 'Finance')
-- 그리고 salary는 
-- department_name 이 'Finance' 인
-- departments 테이블에서
--  department_id 선택하고  employees 테이블에서의 department_id 자료가 일치하는것 중에
-- max(salary) 인 자료와 employees 테이블에 salary 중 일치하는것을 선택
and salary = (select max(salary)
              from employees
              where department_id =(select department_id
                                    from departments
                                    where department_name = 'Finance'));
                                    
-- 2. 옥스포드(Oxford) 시에 거주하는 직원의 이름을 오름차순으로 출력하십시오. 
-- first_name 와 last_name 사이에 공백을 두고 출력한다
select first_name||' '||last_name
-- employees 테이블로부터
from employees
-- department_id는 
-- d.location_id 와 l.location_id  이 같고 l.city 가 'Oxford' 인 자료의
-- d.department_id 를 셀렉트한다 
-- departments d, locations l 테이블로부터
-- 위에서 추출된 자료가 department_id  와 같으면 
where department_id = (select d.department_id
                       from departments d, locations l
                       where d.location_id = l.location_id
                       and l.city = 'Oxford')
-- first_name 오름차순 으로 정렬한다                     
order by first_name;                       
                   
-- 2번 서브쿼리 사용 안한 것
SELECT e.first_name ||' '|| e.last_name
from employees e, departments d, locations l
where e.department_id = d.department_id
and d.location_id = l.location_id
and l.city = 'Oxford'
order by first_name;

-- 3. 퇴직일과 관계없이 2002년 1월 1일 이전에 근무하기 시작한 사람들의 아이디와 이름(성함을 합쳐서 출력함)
-- 을 화면에 인쇄하십시오 , 단, hr 계정에 있는 테이블에서 작성하되 
-- 작성시 동등 조인(equi-join) 및 서브쿼리(sub query)을 이용하여 각각 작성하도록 합니다.

-- (동등조인) 내가 푼것
select e.employee_id ,e.first_name ||' '|| e.last_name
from employees e, job_history j
where e.employee_id = j.employee_id
and j.start_date > '02/01/01';

-- 답
-- 중복 배제 하기위해 distinct 사용
SELECT DISTINCT e.employee_id,
-- 별칭 사용
                (e.first_name || ' ' || e.last_name) AS "이름"
FROM employees e, job_history j
WHERE e.employee_id = j.employee_id
-- 2002/01/01 이전이기때문에 부등호 < 사용
AND  j.start_date < '2002/01/01';   

-- (서브쿼리) 내가푼것
select employee_id ,first_name ||' '|| last_name
from employees 
where employee_id = (select employee_id
                       from job_history
                       where start_date > '20/01/01');

-- 답  
SELECT DISTINCT e.employee_id,
               (e.first_name || ' ' || e.last_name) AS "이름"
FROM employees e
-- 여러조건이 검색되므로 in 사용
WHERE e.employee_id IN ( SELECT j.employee_id
                         FROM job_history j
                         WHERE j.start_date < '2002/01/01' ); 

-- 4. 2005년 4월 1일 당일에 근무중이었으며,   
--  미국 시애틀(Seattle)에 위치한 부서에서 근무했던 근로자들의 이름을 오름차순으로 출력하도록 조치하십시오.
-- 중첩 쿼리(inner query)를 사용하여 풀이하도록 합니다.

-- 내가푼것
select employee_id,first_name||' '||last_name "이름"
from employees 
where employee_id in(select employee_id
                     from job_history j
                     where(start_date <= '2005/04/01'
                     and end_date >= '2005/04/01')                     
and j.department_id in(select d.department_id
                       from departments d
                       where d.location_id =(select location_id
                                             from locations
                                             where city = 'Seattle'))
                      )                 
order by first_name ;                                            

--  답1)
-- employee_id 와 first_name와 last_name을 공백을 두고 연결하고 "이름" 이라는 별칭으로 출력한다
select employee_id,first_name||' '||last_name "이름"
-- employees e 테이블로부터
from employees e
-- 첫번째 서브쿼리
-- job_history j 테이블에 있는 j.department_id 에서 employee_id 가
-- employee_id 와 같은것
-- 두번째 서브쿼리
-- job_history 테이블에서 department_id 중에 start_date 가 '2005/04/01' 보다 작거나 같고
-- end_date 가 '2005/04/01' 보다 크거나 같은데이터
-- 세번째 서브쿼리 : 첫번째 서브 쿼리에서 and 조건
-- departments d 테이블에서 department_id 중에 d.location_id 를 가진것
-- 네번째 서브쿼리 
-- locations 테이블에서 city 가 'Seattle' 인 location_id 데이터 

where employee_id in (select employee_id 
                      FROM job_history j
                      where j.department_id in(select department_id 
                                                FROM job_history
                                                WHERE start_date <= '2005/04/01'
                                                and end_date >= '2005/04/01')
                      and department_id in(select department_id
                                           from departments d
                                           where d.location_id in(select location_id
                                                                  from locations
                                                                  where city = 'Seattle')
                )
                )
ORDER BY "이름";                                                                  

-- 답2) 
SELECT employee_id, first_name ||' '|| last_name "이름"
FROM employees e
WHERE employee_id IN (SELECT j.employee_id
                      FROM job_history j
                      WHERE (j.start_date < '2005/04/01'
                      AND j.end_date > '2005/04/01')               
AND j.department_id IN (SELECT d.department_id
                        FROM departments d
                        WHERE d.location_id = (SELECT l.location_id
                                               FROM locations l
                                               WHERE l.city = 'Seattle'))
                        )
ORDER BY "이름";



