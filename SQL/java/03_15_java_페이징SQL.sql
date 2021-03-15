--- 페이징을 활용한 전체 회원정보 조회 (인라인 뷰(inline-view) 활용)
--- 한번에 10명씩 출력
--- 아이디 중심으로 오름차순 정렬
 
SELECT *  
FROM (SELECT ROWNUM,  
             m.*,  
             FLOOR((ROWNUM - 1) / 10 + 1) page  
      FROM (
             SELECT * FROM member  
             ORDER BY member_id ASC
           ) m  
      )  
WHERE page = 1;