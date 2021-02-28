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
