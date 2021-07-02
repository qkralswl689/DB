USE bootex;
 create table guestbook (
       gno bigint not null auto_increment,
        moddate datetime(6),
        regdate datetime(6),
        content varchar(1500) not null,
        title varchar(100) not null,
        writer varchar(50) not null,
        primary key (gno)
    ) ;