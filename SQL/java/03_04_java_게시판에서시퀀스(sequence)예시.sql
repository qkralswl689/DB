-- ���̺� ����
CREATE TABLE board (
    articleid NUMBER(10),
    title varchar2(200),
    userName varchar2(20),  
    writeDate varchar2(50),                      
    TYPE varchar2(1),    
    email varchar2(50),  
    homeUrl varchar2(100),    
    parent_articleid NUMBER(10) ,        
    hits NUMBER(10),      
    content varchar2(4000),                        
    passwd varchar2(20),    
    CONSTRAINT pk_board PRIMARY KEY(articleid)
);

-- sequence ��뿹��
-- seq_board �̸��� ���� ������ ����
create sequence seq_board
-- start with 1 : ù° ���� 1
start with 1
-- increment by 1 : 1�� ����
increment by 1
-- MAXVALUE : �ִ밪
MAXVALUE 99999
-- nocycle : �ִ밪�� �����ϸ� ������ ������ ����
-- cycle : �ִ밪�� �����ϸ� �ּҰ����� �ٽý���
NOCYCLE
-- NOCACHE : ������ ���� �޸𸮿� �Ҵ����� �ʴ´�
-- CACHE : �޸𸮿� ������ ���� �̸� �Ҵ��Ѵ�
NOCACHE;

-- ����
-- nextval : �ش� ���������� ���� ���� ���� �ڵ����� �����´�
-- board ���̺��� articleid �� ������ ���� �������Ѷ� (�����ݺ�)
insert into board (articleid) values(seq_board.nextval);
insert into board (articleid) values(seq_board.nextval);
insert into board (articleid) values(seq_board.nextval);

-- ������ �� ������Ʈ �Ȱ� Ȯ��
select * from board;

-- ������ ��ȸ
-- currval : �ش� ������ �� ��ȸ
select seq_board.currval FROM dual;
-- user_sequences : ��ü ������ ��ȸ
select * from user_sequences;

-- ������ ����
-- ALTER SEQUENCE ������ ����
ALTER SEQUENCE seq_board
-- INCREMENT : ������ ����
INCREMENT by 2
-- �ּҰ� ����
minvalue 1
-- �ִ밪 ����
maxvalue 10
-- ����Ŭ ���� ����
CYCLE
-- ĳ�� �������δ� ����
NOCACHE;

-- ������ ����
drop SEQUENCE ��������;