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

SELECT * FROM idol_group;

-- ���̺� ���� �ϱ� : ���̺��� �Ӽ��� �����ϰ� ���̺��� ������ �����͵鸸 ����ȴ�
CREATE TABLE IDOL_GROUP_COPY AS SELECT * FROM idol_group;

-- ���� ������ ���̺� ������ ����
-- 1=2 : ������ ������ ������ �Ǳ⶧���� ������ ����ȴ�
-- ī���ϰ���� �����͸� ī���Ҷ����� WHERE���� �����Ѵ�
CREATE TABLE IDOL_GROUP_COPY AS SELECT * FROM idol_group WHERE 1=2;

SELECT * FROM IDOL_GROUP_COPY;

-- �ش����̺��� ������ ��� ���� => ������ ��������
DELETE FROM IDOL_GROUP_COPY;
-- �ٽ� �ǵ�����
ROLLBACK;

-- �����ϰ���� ������ �����Ͽ� ���� 
DELETE FROM IDOL_GROUP_COPY
WHERE group_name='Wanna One';


DELETE FROM IDOL_GROUP_COPY
-- SM�̸鼭 BOY�׷��� ������ ���� 
WHERE company='SM �������θ�Ʈ'AND GENDER='boy';

-- TRUNCATE : �α׸� �����ʰ� �ٷ� ���� => �ѹ�ȵȴ�
TRUNCATE TABLE IDOL_GROUP_COPY;


SELECT member_name,real_name ,
-- NVL : �������� ���� NULL�̸� ��ü ���� �ְ� ����϶�� �Լ�
-- real_name���� NULL�̸� MEMBER_NAME ���� ����ض�
-- NAME1 : ����� ���� ��Ī 
NVL(real_name,MEMBER_NAME)NAME1,
-- NULLIF : ���ʰ��� ������ ���� ������ NULL�� ����ϰ� �ٸ��� ���ʰ��� ����϶�� �Լ�
NULLIF(member_name,'����') NAME2,
-- COALESCE : ���ڰ� �߿��� NULL�� �ƴ� �����ǰ��� ����ϴ� �Լ�
-- �̿� : NULL�� �ƴϱ� ������ real_name Ȯ�� => ���̿� �� ������
-- �δ� : NULL �ƴϱ� ������ real_name Ȯ�� => NULL�̱� ������ MEMBER_NAME �����´�
COALESCE(NULL,real_name,MEMBER_NAME)NAME3
FROM idol_member
WHERE group_name = '(����)���̵�';