SELECT * FROM IDOL_GROUP;
SELECT * FROM idol_member;

SELECT * FROM idol_group A, idol_member B 
-- ���̵� �׷� ���̺� �������� ���̵� ������̺��� �ƿ��� ���� :  (+) ���
WHERE a.group_name = b.group_name(+);

-- A���̺��� �������� JOIN������ ON ���� ������
SELECT * FROM idol_group A 
LEFT OUTER JOIN idol_member B 
ON a.group_name = b.group_namE;

SELECT * FROM idol_member;

-- SET �ڿ� �����ϰ���� �÷����� �ۼ� �� ���� ������ ����
UPDATE idol_member SET real_name='���̿�' 
-- � �ο��� �����͸� ������Ʈ ���� ����
WHERE member_name='�̿�';

-- ���� �ο쿡 �Ѱ��� �̻� ������ �߰��ϰ� ������ ,�ְ� �����ϰ���� �÷��� �߰�
UPDATE idol_member SET real_name='����ȭ',sns_info = 'V LIVE,�ν�Ÿ�׷�'
WHERE member_name='��ȭ';

-- ������Ʈ ��(DML��- UPDATE,DELETE,INSERT,SELECT)�� Ŀ���� �� ������Ѵ�
-- COMMIT�� �����ָ� �ٸ����ǿ��� ������ ������Ʈ�� �ݿ��Ǿ����� �ʴ�
-- COMMIT : ������ ����
-- ROLLBACK : ������Ʈ ���� �ǵ����°�
COMMIT;
