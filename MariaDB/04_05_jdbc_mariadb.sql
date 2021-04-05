DELIMITER $$

CREATE OR REPLACE PROCEDURE dummy_member_gen_proc()
BEGIN
	 
	 START TRANSACTION;
	 
    FOR i IN 1..100 
	 DO
        INSERT INTO member VALUES
        (CONCAT('goodee_', (1000+i)),
         '#Oracle1234',
         '별명',
         CONCAT('김', (100+i)),
         'm',
         CONCAT('goodee_',  i,  '@abcd.com'),
         CONCAT('010-1234-', (1000+i)),
         '1990-1-1',  
         '12345',  
         '서울 금천구 가산대로',
         '구디아카데미',  
         NOW());
     END FOR;
     
     COMMIT;
 
END $$


DELIMITER ;

SELECT conut(*) FROM member WHERE member_id = 'java';