CREATE TABLE tb_board (
    idx INT NOT NULL,
    title VARCHAR2(100) NOT NULL ,
    content VARCHAR2(3000) NOT NULL ,
    secret_yn char(1) NOT NULL CONSTRAINT booleanSecret check(secret_yn IN('Y','N')) ,
    delete_yn char(1) NOT NULL CONSTRAINT booleanDelete check(delete_yn IN('Y','N'))  ,
    insert_time DATE NOT NULL ,
    update_time DATE NULL ,
    delete_time DATE NULL ,
    PRIMARY KEY (idx)
);