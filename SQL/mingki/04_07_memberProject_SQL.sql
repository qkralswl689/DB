SELECT *  
FROM (SELECT ROWNUM,  
m.*, 
FLOOR((ROWNUM - 1) / 1 + 1) page 
				       FROM ( 
				                SELECT * FROM member_tbl
				                ORDER BY member_id ASC
				              ) m  
			    )  
			WHERE page = 10;
            
select *
from member_tbl 
where rownum between 1 and 5;

-- 안나옴 (1번부터 해야된다)
select *
from member_tbl 
where rownum between 6 and 10;

select *
from (select rownum num, m.* from (
select * from member_tbl order by member_id ASC)m
)
where num BETWEEN 6 and 10;


