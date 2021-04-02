-- PROCEDURE : ���ϰ��� ���� �Լ�
CREATE OR REPLACE PROCEDURE dummy_member_gen_proc
IS
BEGIN
-- ����
    FOR i IN 1..100 LOOP
        INSERT INTO member VALUES
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

-------------------------------------------------
-- �̸� ����ȭ ��Ű�°� 
CREATE OR REPLACE PROCEDURE name_update_gen_proc  
IS  
-- ��������� �ڷ��� ����� ���, CLOB�� ������ �迭�̴�
      TYPE first_name_array      IS VARRAY(20) OF CLOB;  
      TYPE middle_name_array      IS VARRAY(10) OF CLOB;  
      TYPE last_name_array      IS VARRAY(10) OF CLOB;  
      first_names   first_name_array;  
      middle_names   middle_name_array;  
      last_names   last_name_array;        
      v_firstName CLOB;  
      v_middleName CLOB;  
      v_lastName CLOB;  
      totalName CLOB;  
      temp_num NUMBER(2);  
BEGIN  
      first_names := first_name_array('��','��','��','��','��','��','��','��','����','����','Ȳ','Ȳ��','��','��','��','��','��','��','��','��');  
      middle_names := middle_name_array('��','��','��','��','��','��','��','��','��','��');  
      last_names := last_name_array('��','��','��','��','��','��','��','��','��','��');  
       
      FOR i IN 1..100 LOOP  
         
-- DBMS_RANDOM : ����Ŭ�� ���� ��ü
        temp_num := round(DBMS_RANDOM.VALUE(1,20),0);  
        v_firstName :=  first_names(temp_num);  
        temp_num := round(DBMS_RANDOM.VALUE(1,10),0);  
        v_middleName :=  middle_names(temp_num);  
        temp_num := round(DBMS_RANDOM.VALUE(1,10),0);  
        v_lastName :=  last_names(temp_num);  
        totalName := v_firstName || v_middleName || v_lastName;  
                         
        UPDATE member SET member_name = totalName  
        WHERE member_id = 'goodee_' || (1000+i);
 
    END LOOP;  

    COMMIT;         
  END;  
/  
 
EXECUTE name_update_gen_proc;   