-- CRUD(insert, select, update, delete) : DML

INSERT INTO member VALUES
('java1234', '#Abcd1234', '�ڹٸ�', 'ȫ�浿', 'm', 'abcd@abcd.com',
'010-1234-5678', '1990-01-01', '12345','���� ��õ�� ����',
'�븢 3�� 11��', sysdate);
 
SELECT * FROM member WHERE member_id='java1234';
 
UPDATE member SET
member_password='#Spring1234',
member_zip='12345',
member_address_basic='���� ��õ�� ��������д���',
member_address_detail='�����ī����'
WHERE member_id='java1234';
 
DELETE member WHERE member_id='java1234';

