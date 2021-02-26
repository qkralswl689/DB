select * from employees;

-- Steven 이름 을 가진 데이터 보기
select * from employees
where first_name = 'Steven';

-- first_name 과 last_name 사이에 공백을 넣어 출력
select first_name || ' ' || last_name from employees
where first_name = 'Steven';

-- first_name 과 last_name 사이에 공백을 넣어 출력 후 별칭을 이름 으로 지정
select first_name||' '||last_name as "이름" from employees
where first_name = 'Steven';

-- first_name 과 last_name 사이에 공백을 넣어 출력 후 별칭을 이름 으로 지정
select first_name||' '||last_name "이름" from employees
where first_name = 'Steven';

-- Kevin이라는 이름을 가진 데이터의 급여에 10000을 더하고 별칭을 10000달러 인상분 으로 지정해 출력
select salary+10000 "10000달러 인상분" FROM employees
where first_name = 'Kevin';

-- first_name 의 중복을 제거 한 후 출력
SELECT distinct first_name from employees;

-- first_name 과 last_name 사이에 공백을 넣고 별칭을 이름으로 지정하여 id가 150 초과 170미만인 데이터 출력
SELECT first_name||' '||last_name "이름" from employees
where employee_id > 150 AND employee_id < 170;

-- first_name 과 last_name 사이에 공백을 넣고 별칭을 이름으로 지정하여 id가 150 초과인 데이터 출력
select first_name||' '||last_name "이름" FROM employees
where employee_id >150;

-- first_name 이 D로 시작하는 데이터 출력
select first_name from employees
where first_name LIKE 'D%';

-- Like 가 없기때문에 아무것도 출력 안된다
select first_name from employees
where first_name = 'D%';

-- email 데이터 중에 id가 150이상이고 170 이하인 데이터를 별칭을 이메일로 정해 출력
select email "이메일" from employees
where employee_id >= 150 AND employee_id <=170;

-- email 데이터 중에 id가 150~ 170 사이인 데이터를 별칭을 이메일로 정해 출력
select email "이메일" From employees
where employee_id between 150 and 170;

