CREATE TABLE user_role (
	role_id number(5,0) primary key,
	member_id varchar2(20) not null,
	member_role varchar2(20) default 'guest'
);

-- �ϰ� ����
INSERT INTO user_role (role_id, member_id) 
	SELECT user_role_seq.nextval, member_id FROM member_tbl;
commit;
-- PROCEDURE : ���ϰ��� ���� �Լ�
CREATE OR REPLACE PROCEDURE dummy_member_gen_proc
IS
BEGIN
-- ����
    FOR i IN 1..100 LOOP
        INSERT INTO member_tbl VALUES
        ('goodee_' || (1000+i),
         '#Oracle1234',
         '����',
         '��' || (100+i),
         'm',
         'goodee_' || i || '@abcd.com',
         '010-1234-' || (1000+i),
         '1990-1-1',  
         '12345',  
         '���� ��õ�� ������',
         '�����ī����',  
         SYSDATE);
     END LOOP;
 
    COMMIT;    
END;
/
-- / : run ���

-- EXECUTE : PLSQL �θ��� ��� 
EXECUTE dummy_member_gen_proc;