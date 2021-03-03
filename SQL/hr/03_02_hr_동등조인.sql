-- (hr 계정) (동등 조인) 옥스포드(Oxford)시에 거주하는 직원의 이름을 오름차순으로 출력하십시오.

-- e.first_name 과 빈칸 ' ' 과 e.last_name을 연결하고 별칭을 이름으로 설정하여 출력
SELECT e.first_name || ' ' || e.last_name "이름"
-- employees,departments,locations 테이블로부터
from employees e, departments d ,locations l
-- e.department_id 와 d.department_id 가 같고
where e.department_id = d.department_id
-- d.location_id 와 l.location_id 가 같고
and d.location_id = l.location_id 
-- l.city 가 'Oxford' 인 값을
and l.city = 'Oxford'
-- first_name 을 기준으로 오름차순하여 정렬
order by first_name;

-- (hr 계정) (동등 조인) 퇴직일과 관계없이 2002년 1월 1일 이전에 근무하기 시작한 사람들의 
-- 아이디와 이름(성함을 합쳐서 출력함)을 화면에 인쇄하십시오.
-- e.employee_id와  e.first_name 과 빈칸 ' ' 과 e.last_name을 연결하고 별칭을 이름으로 설정고 중복 제거 후 출력
-- as는 생략가능하다
-- distinct : 중복 제거
select DISTINCT e.employee_id,(e.first_name || ' ' || e.last_name) as "이름"
-- employees 와 job_history 테이블로부터
from employees e, job_history j
-- e.employee_id 와 j.employee_id 가 같고 j.start_date 가 '2002/01/01' 보다 적은 사람 출력
where e.employee_id = j.employee_id
and j.start_date < '2002/01/01';

-- (hr 계정) (동등 조인) 시애틀에 사는 모든 사람들의 이름(last_name), 부서 명, 지역 ID 및 도시 명을
-- 조회합니다.
select e.last_name, d.department_name, l.location_id, l.city
from employees e, departments d , locations l
where e.department_id = d.department_id 
and d.location_id = l.location_id
and l.city = 'Seattle';

-- (hr 계정) (self 조인) 자신의 관리자(manager)보다 먼저 고용된 사원들의 이름(last_name) 및 
-- 고용일(hire_date)을 조회합니다.

-- e.last_name과 e.employee_id 와 e.hire_date 를 출력
select e.last_name, e.employee_id,e.hire_date
-- employees e, employees m : 같은 테이블이라도 별칭을 다르게 주면 따로따로 사용할 수 있다
from employees e, employees m
-- e.manager_id 와 m.employee_id 가 같고 e.hire_date 가 m.hire_date보다 작으면
where e.manager_id = m.employee_id 
and e.hire_date < m.hire_date
-- e.last_name 을 기준으로 오름차순 정렬한다
order by e.last_name;

-- (hr 계정) (동등 조인) 부서 명, 위치 ID, 각 부서 별(로 묶어서) 총 사원수, 각 부서 별 평균 연봉(별칭 
-- "평균 연봉")을 조회합니다. 단, 평균 연봉은 소수점 2자리까지만 표현한다.

-- d.department_name 과 d.location_id 과
-- count(e.employee_id): employee_id 갯수 구하고 => 총 사원수
-- round(avg(salary),2) "평균연봉" => 연봉의 평균을 구하고 소숫점2자리까지 표현하고 별칭을 평균연봉으로 설정해 출력한다
select d.department_name, d.location_id ,count(e.employee_id),round(avg(salary),2) "평균연봉"
-- employees 와 departments 테이블로부터
from employees e, departments d
-- e.department_id 와 d.department_id 같은 자료들 중에
where e.department_id = d.department_id
-- d.department_name 과 d.location_id 를 그룹별로 정렬한다
GROUP BY d.department_name,d.location_id
-- d.location_id을 기준으로 오름차순 정렬한다
order by d.location_id;

-- (hr 계정) (동등 조인) 부서 번호가 30 이거나 90인 부서의 모든 직무 아이디 및 부서 아이디를 중복을 
-- 배제하여 직무 아이디 순으로 오름차순으로 정렬하여 조회하십시오.

-- e.job_id 와 d.department_id 를 출력
select distinct e.job_id,d.department_id
-- employees e 와 departments d 테이블로 부터
FROM  employees e, departments d
-- d.department_id  와 e.department_id 가 같고 
WHERE d.department_id  = e.department_id
-- d.department_id 중에 번호가 in(30,90) 30 ,90 인 데이터를
and d.department_id in(30,90)
-- e.job_id 를 기준으로 오름차순 으로 정렬 
ORDER BY e.job_id;

