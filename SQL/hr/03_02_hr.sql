-- id가 200이상이거나 같은 자료 id를 기준으로 오름차순으로 출력
select * from employees
where employee_id >=200
order by employee_id asc;

-- id가 200이상이거나 같은 자료 id를 기준으로 내림차순으로 출력
SELECT * FROM employees
where employee_id >= 200
order by employee_id desc;

-- id가 200이상이거나 같은 자료 first_name을 기준으로 오름차순으로 출력
select * from employees
where employee_id >=200
ORDER BY first_name asc;

-- id가 200이상이거나 같은 자료 first_name과 salary를 기준으로 오름차순으로 출력
-- 다중 정렬이 유효하지 않는다 : 공통 분모 에 해당되는 필드를 앞세워 정렬하는것이 바람직하다
select * from employees
where employee_id >=200
ORDER BY first_name,salary asc;

-- M_id, first_name , salary 자료를 M_id를 기준으로 salry 를 오름차순으로 출력
SELECT manager_id, first_name, salary from employees
order by manager_id, salary asc;

-- dual : 가상테이블,DUMMY Table => 테이블을 쓸 일이 없을 때 사용 
select abs(-15) "절대값(Absolute)" from dual;



    