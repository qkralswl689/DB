SELECT * FROM IDOL_GROUP;
SELECT * FROM idol_member;

SELECT * FROM idol_group A, idol_member B 
-- 아이돌 그룹 테이블 기준으로 아이돌 멤버테이블을 아우터 조인 :  (+) 사용
WHERE a.group_name = b.group_name(+);

-- A테이블을 기준으로 JOIN조건은 ON 절에 붙힌다
SELECT * FROM idol_group A 
LEFT OUTER JOIN idol_member B 
ON a.group_name = b.group_namE;