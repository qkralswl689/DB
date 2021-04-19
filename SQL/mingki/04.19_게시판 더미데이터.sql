select max(board_num) from board;


-- dummy board data generator

CREATE OR REPLACE PROCEDURE model2_board_dummy_gen_proc
IS
	v_board_num board.board_num%TYPE;
BEGIN

    v_board_num := 1;

    FOR i IN 1..100 LOOP
    
        select max(board_num)+1 into v_board_num from board;

        INSERT INTO board VALUES
        (
        	v_board_num,
        	'글쓴이' || i,
        	'123456789',
        	'글쓴이의 글 제목' || i,
        	'글쓴이의 글 내용' || i,
        	'',
        	v_board_num,
        	0,
        	0,
        	0,
        	sysdate
        );
     END LOOP;

    COMMIT;
END;
/

EXECUTE model2_board_dummy_gen_proc;

COMMIT;