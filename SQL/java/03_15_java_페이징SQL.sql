--- ����¡�� Ȱ���� ��ü ȸ������ ��ȸ (�ζ��� ��(inline-view) Ȱ��)
--- �ѹ��� 10�� ���
--- ���̵� �߽����� �������� ����
 
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