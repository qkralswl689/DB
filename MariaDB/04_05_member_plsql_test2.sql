-- declare 변수 : 변수 선언( https://mariadb.com/kb/en/declare-variable/)        
-- 반올림 : round : https://mariadb.com/kb/en/round/
-- 내림 : floor : 
-- 난수(무작위수) 발생 : rand : https://mariadb.com/kb/en/rand/
-- https://mariadb.com/kb/en/floor/
-- 0,19사이의 난수
-- SELECT FLOOR(0 + (RAND() * 20));
-- SELECT ROUND(0 + (RAND() * 19));

-- DELIMITER $$

DELIMITER ;;

CREATE OR REPLACE PROCEDURE name_update_gen_proc()  
BEGIN  

	  DECLARE v_firstName TEXT;  
      DECLARE v_middleName TEXT;  
      DECLARE v_lastName TEXT;  
      DECLARE totalName TEXT;  

      SET @first_names = '["김","이","박","최","주","임","엄","성","남궁","독고","황","황보","송","오","유","류","윤","장","정","추"]';  
      SET @middle_names = '["숙","갑","영","순","선","원","우","이","운","성"]';  
	  SET @last_names = '["영","수","희","빈","민","정","순","주","연","영"]';  
       
      FOR i IN 1..100 DO
	     
        SET @temp_num = FLOOR(0 + (RAND() * 20));  
        SET v_firstName =  JSON_VALUE(@first_names, CONCAT('$[',@temp_num,']'));  
     
	    SET @temp_num = FLOOR(0 + (RAND() * 10)); 
        SET v_middleName =  JSON_VALUE(@middle_names, CONCAT('$[',@temp_num,']'));  
        
        SET @temp_num = FLOOR(0 + (RAND() * 10));         
        SET v_lastName = JSON_VALUE(@last_names, CONCAT('$[',@temp_num,']'));  
        
        SET totalName = CONCAT(v_firstName, v_middleName, v_lastName);  
                         
        UPDATE member SET member_name = totalName  
        WHERE member_id = CONCAT('goodee_', (1000+i));
 
    END FOR;  

    COMMIT;
 
-- END $$
END;;

DELIMITER ;
 
CALL name_update_gen_proc(); 