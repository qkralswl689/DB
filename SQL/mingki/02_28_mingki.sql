SELECT * FROM IDOL_GROUP;
SELECT * FROM idol_member;

SELECT * FROM idol_group A, idol_member B 
-- ���̵� �׷� ���̺� �������� ���̵� ������̺��� �ƿ��� ���� :  (+) ���
WHERE a.group_name = b.group_name(+);

-- A���̺��� �������� JOIN������ ON ���� ������
SELECT * FROM idol_group A 
LEFT OUTER JOIN idol_member B 
ON a.group_name = b.group_namE;