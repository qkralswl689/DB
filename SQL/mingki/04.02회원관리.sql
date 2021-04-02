CREATE TABLE member_tbl (
  member_id VARCHAR2(20) PRIMARY KEY,
  member_password VARCHAR2(20) NOT NULL,
  member_nickname VARCHAR2(50) NOT NULL,
  member_name VARCHAR2(50) NOT NULL,
  member_gender CHAR(1) NOT NULL,
  member_email VARCHAR2(50) NOT NULL UNIQUE,
  member_phone VARCHAR2(13) NOT NULL UNIQUE,
  member_birth DATE,
  member_zip VARCHAR2(5),
  member_address VARCHAR2(1200),
  member_joindate DATE DEFAULT sysdate
);

CREATE sequence user_role_seq 
START WITH 1
INCREMENT BY 1
maxvalue 99999
nocycle
nocache;

CREATE TABLE user_role (
	role_id number(5,0) primary key,
	member_id varchar2(20) not null,
	member_role varchar2(20) default 'guest'
);
-- ������
INSERT INTO member_tbl VALUES
('admin12345','Admin12345!', '������',
 '������', 'm', 'abcd222@abcd.com', '010-1222-2333',
 '2000-05-22', '12345','���� ���α�*����Ŭ�ڹٱ�������',
 sysdate);
-- �ϰ� ����
INSERT INTO user_role (role_id, member_id) 
	SELECT user_role_seq.nextval, member_id FROM member_tbl;
CREATE OR REPLACE PROCEDURE dummy_member_gen_proc
IS
BEGIN
 
    FOR i IN 1..100 LOOP
        INSERT INTO member_tbl VALUES
        ('oracle_' || (1000+i),
         '#Oracle1234',
         '����',
         '��' || (100+i),
         'm',
         'goodee_' || i || '@abcd.com',
         '010-1234-' || (1000+i),
         '1990-1-1',  
         '12345',  
         '���� ��õ*�����ī����',  
         SYSDATE);
         
         INSERT INTO user_role (role_id, member_id, member_role) 
		 VALUES (user_role_seq.nextval, 'oracle_' || (1000+i), 'guest');
			
     END LOOP;
     
    COMMIT;    
END;
/
 
EXECUTE dummy_member_gen_proc;

------------------------------------------------

UPDATE member_tbl SET
   member_address='����� ��õ�� ������*�����ī����';        

-------------------------------------------------
   
CREATE OR REPLACE PROCEDURE name_update_gen_proc  
IS  
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
         
        temp_num := round(DBMS_RANDOM.VALUE(1,20),0);  
        v_firstName :=  first_names(temp_num);  
        temp_num := round(DBMS_RANDOM.VALUE(1,10),0);  
        v_middleName :=  middle_names(temp_num);  
        temp_num := round(DBMS_RANDOM.VALUE(1,10),0);  
        v_lastName :=  last_names(temp_num);  
        totalName := v_firstName || v_middleName || v_lastName;  
                         
        UPDATE member_tbl SET member_name = totalName  
        WHERE member_id = 'oracle_' || (1000+i);
 
    END LOOP;  

    COMMIT;         
  END;  
/  
 
EXECUTE name_update_gen_proc;     