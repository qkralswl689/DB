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

commit;

drop table diaryvo;
create table diaryvo(
    id number,
    author VARCHAR(20),
    title VARCHAR(100),
    content VARCHAR(500)
);

create table board (
       id number(19,0) not null,
        author varchar2(10 char) not null,
        content TEXT not null,
        created_date timestamp,
        modified_date timestamp,
        title varchar2(100 char) not null,
        primary key (id)
    );
    
create table board (
        id number(19,0) primary key,
        author varchar2(10 char) not null,
        content TEXT not null,
        created_date date,
        modified_date date,
        title varchar2(100 char) not null
);
