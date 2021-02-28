SELECT * FROM IDOL_GROUP;
SELECT * FROM idol_member;

SELECT * FROM idol_group A, idol_member B 
-- 아이돌 그룹 테이블 기준으로 아이돌 멤버테이블을 아우터 조인 :  (+) 사용
WHERE a.group_name = b.group_name(+);

-- A테이블을 기준으로 JOIN조건은 ON 절에 붙힌다
SELECT * FROM idol_group A 
LEFT OUTER JOIN idol_member B 
ON a.group_name = b.group_namE;

SELECT * FROM idol_member;

-- SET 뒤에 변경하고싶은 컬럼명을 작성 후 넣을 데이터 쓴다
UPDATE idol_member SET real_name='조미연' 
-- 어떤 로우의 데이터를 업데이트 할지 정의
WHERE member_name='미연';

-- 같은 로우에 한가지 이상 내용을 추가하고 싶을때 ,넣고 변경하고싶은 컬럼명 추가
UPDATE idol_member SET real_name='예슈화',sns_info = 'V LIVE,인스타그램'
WHERE member_name='수화';

-- 업데이트 문(DML문- UPDATE,DELETE,INSERT,SELECT)은 커밋을 꼭 해줘야한다
-- COMMIT을 안해주면 다른세션에서 들어오면 업데이트가 반영되어있지 않다
-- COMMIT : 영구적 저장
-- ROLLBACK : 업데이트 내용 되돌리는것
COMMIT;

SELECT * FROM idol_group;

-- 테이블 복사 하기 : 테이블의 속성은 제외하고 테이블의 구조와 데이터들만 복사된다
CREATE TABLE IDOL_GROUP_COPY AS SELECT * FROM idol_group;

-- 내용 제외한 테이블 구조만 복사
-- 1=2 : 조건이 무조건 거짓이 되기때문에 구조만 복사된다
-- 카피하고싶은 데이터만 카피할때에는 WHERE절에 정의한다
CREATE TABLE IDOL_GROUP_COPY AS SELECT * FROM idol_group WHERE 1=2;

SELECT * FROM IDOL_GROUP_COPY;

-- 해당테이블의 데이터 모두 삭제 => 구조는 남아있음
DELETE FROM IDOL_GROUP_COPY;
-- 다시 되돌리기
ROLLBACK;

-- 삭제하고싶은 데이터 선택하여 삭제 
DELETE FROM IDOL_GROUP_COPY
WHERE group_name='Wanna One';


DELETE FROM IDOL_GROUP_COPY
-- SM이면서 BOY그룹인 데이터 삭제 
WHERE company='SM 엔터테인먼트'AND GENDER='boy';

-- TRUNCATE : 로그를 쌓지않고 바로 삭제 => 롤백안된다
TRUNCATE TABLE IDOL_GROUP_COPY;


SELECT member_name,real_name ,
-- NVL : 데이터의 값이 NULL이면 대체 값을 주고 출력하라는 함수
-- real_name값이 NULL이면 MEMBER_NAME 값을 출력해라
-- NAME1 : 출력한 값의 별칭 
NVL(real_name,MEMBER_NAME)NAME1,
-- NULLIF : 왼쪽값과 오른쪽 값이 같으면 NULL을 출력하고 다르면 왼쪽값을 출력하라는 함수
NULLIF(member_name,'수진') NAME2,
-- COALESCE : 인자값 중에서 NULL이 아닌 최초의값을 출력하는 함수
-- 미연 : NULL이 아니기 때문에 real_name 확인 => 조미연 값 가져옴
-- 민니 : NULL 아니기 때문에 real_name 확인 => NULL이기 때문에 MEMBER_NAME 가져온다
COALESCE(NULL,real_name,MEMBER_NAME)NAME3
FROM idol_member
WHERE group_name = '(여자)아이들';