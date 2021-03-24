-- desc 명령어 : 특정한 테이블의구조 조회
DESC emp;

-- select 명령어
-- 모든 컬럼과 모든 레코드 조회
SELECT * FROM emp;
-- emp 테이블의 모든 레코드의 empno,ename,deptno컬럼조회
SELECT empno,ename,deptno
FROM emp;
-- 컬럼에 리터널 문자 사용
SELECT empno,ename, 'Very Good~' FROM emp;
-- 문제1) emp테이블의 모든 레코드의 empno,ename컬럼 출력 select구문작성
SELECT '사번',empno,'이름',ename 
FROM emp;
-- 문제2) 교수 테이블, 모든 레코드의 교수이름,교수번호 컬럼 조회
SELECT '교수번호', NO,'교수이름',name
FROM professor;

-- 컬럼에 별명(alias) 넣기
-- 교수테이블의 no컬럼 :교수번호,name 컬럼 : 교수이름 으로 변경하여 출력
SELECT NO 교수번호, NAME 교수이름 
FROM professor;
-- 공백을 넣을경우 별명을 ""로 묶어서 작성
SELECT NO "교수 번호", NAME "교수 이름"
FROM professor;
-- as 예약어 사용
SELECT NO AS "교수 번호", NAME AS"교수 이름"
FROM professor;

-- 컬럼에 연산자 사용
-- 산술 연산자 사용
-- 사원 급여를 10%씩 일괄 인상하였을 때의 예상 급여 조회
SELECT ename 이름, salary 현재급여,salary * 1.1 인상예상급여
FROM emp;
-- distinct : 중복제거, 하나의 값만 조회할 수 있다, 한번만 사용가능
-- 교수가 속한 부서코드 조회(position과 deptno 값 중복되지않도록 출력)
SELECT DISTINCT position,deptno 
FROM professor;

-- where 조건문 : 컬럼의 값을 이용하여 조건에 맞는 레코드 조회
-- 학생테이블에서 1학년 학생의 모든 컬럼 조회
SELECT * FROM student WHERE grade =1;
-- 문제1) emp테이블에서 부서코드가 10인 사원의 이름,급여,부서코드조회
SELECT ename,salary,deptno
FROM emp
WHERE deptno = 10;
-- 문제2) emp테이블에서 급여가 800보다 큰사람의 이름과 급여 조회
SELECT ename, salary
FROM emp
WHERE salary>800;
-- 문제3) professor테이블에서 직급이 정교수인 교수의 이름, 부서코드,직급 출력
SELECT NAME,deptno,POSITION
FROM professor
WHERE POSITION='정교수';

-- 칼럼의 산술 결과를 이용하여 조건에 맞는 레코드 조회
-- emp테이블의 사원의 급여를 10%씩 일괄 인상하기로 할 때 
-- 예상급여가 1000 미만인 사원의 이름,현재급여,예상급여 조회
SELECT ename 이름 , salary 현재급여, salary * 1.1 예상인상급여
FROM emp
WHERE salary * 1.1 < 1000;
-- 문제1) 사원의 급여가 700이하인 사원들만 급여를 5%인상하기로한다
-- 인상에 해당되는 사원 이름, 현재급여,예상인상급여,부서코드 출력
SELECT ename 이름, salary 현재급여, salary *1.05 예상인상급여, deptno
FROM emp
WHERE salary <= 700;
-- 문제2) 학생증 생일이 1998년6월30일 이후에 출생한 학생 중
-- 1학년 학생의 이름,학과코드, 생일, 학년 조회
SELECT NAME,major1,birthday,grade
FROM student
WHERE birthday>='1998-06-30';

-- between 연산자를 이용한 where 조건문
-- 1학년 학생 중 몸무게가 70이상 80이하인 학생의 이름과 몸무게 출력
SELECT NAME,weight
FROM student
WHERE weight BETWEEN 70 AND 80 
AND grade=1;
-- 문제1) 제1 전공학과가 101번 학생 중 몸무게가 50이상 80이하인 학생의 이름, 몸무게 1전공학과 코드 출력
SELECT NAME, weight, major1
FROM student
WHERE weight BETWEEN 50 AND 80 
AND major1=101;
 
-- in 연산자를 이용한 where 조건문 : 조회대상 커럶 값이 관계연산자,between연산자 이용하지 못할 때 사용
-- 학생중 전공1이 101학과이거나 201학과학생의 이름, 전공코드,학년 출력
SELECT NAME,major1,grade
FROM student
WHERE major1 IN(101,201);
-- 문제1) 101,202 전공학과 학생중 키가 170 이상인 학생의 학번,이름,몸무게,키,학과코드 조회
SELECT studno,NAME,weight,height,major1
FROM student
WHERE height >=170 AND major1 IN(101,201);

-- like 연산자를 이용한 where 조건문
-- 학생중에 성이 김씨인 학생의 이름과 전공코드 출력
SELECT NAME, major1
FROM student
WHERE NAME LIKE '김%';
-- 학생 이름 중 '진'자가 있는 학생의 이름, 학년, 전공코드 출력
SELECT NAME,grade,major1
FROM student
WHERE NAME LIKE '%진%';
-- 학생 중 이름이 두자인 학생의 이름, 학년, 부서코드 출력
SELECT NAME,grade,major1
FROM student
WHERE NAME LIKE'__';
-- 문제1) 학생중 이름의 끝자가 '훈' 인 학생의 학번,이름,전공코드1 출력
SELECT studno,NAME,major1
FROM student
WHERE NAME LIKE '%훈';
-- 문제2) 학생 중 전화번호가 저울지역인 학생의 이름,학번,전화번호 출력
SELECT NAME,studno,tel
FROM student
WHERE tel LIKE '02%';
-- 성이 이씨가 아닌 학생의 학번,이름 전공코드1 출력
SELECT studno,NAME,major1
FROM student
WHERE NAME NOT LIKE '이%';
-- is null, is not null 을 이용한 where 조건문
-- 사원 중 상여금이 없는 사원의 사원번호, 이름, 급여, 보너스 출력
SELECT empno,ename,salary,bonus
FROM emp
WHERE bonus IS NULL;
-- 사원중 상여금이 있는 사원의 사원번호,이름,급여,보너스 출력
SELECT empno,ename,salary,bonus
FROM emp
WHERE bonus IS not NULL;
-- 교수의 이름,급여,보너스,연봉 출력 ( 연봉:salary*12+bonus로 계산)
SELECT NAME,salary,bonus,salary*12+bonus 연봉
FROM professor;
-- 보너스가 있는 교수의 이름,급여,보너스,연봉 출력
SELECT NAME,salary,bonus,salary*12+bonus 연봉
FROM professor
WHERE bonus IS NOT NULL;

-- binary 예약어 사용하기 : 소문자로 된 데이터를 소문자로만 조회할수 있도록 설정(대문자도 가능)
-- 교수테이블에서 id에 k가 존재하는 교수의 이름, id,직책 출력
SELECT NAME,id,POSITION
FROM professor
where id LIKE '%K%'; -- 대소문자 변경해서 조회해도 조회 가능하다
SELECT NAME,id,POSITION
FROM professor
where id LIKE BINARY'%k%';


