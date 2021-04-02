memberCREATE TABLE member (
    member_id   varchar(20)    PRIMARY KEY,
    member_password varchar(20)    NOT NULL,
    member_nickname varchar(75)    NOT NULL,
    member_name varchar(75)    NOT NULL,
    member_gender   CHAR(1)    NOT NULL,
    member_email    varchar(50)    NOT NULL,
    member_phone    varchar(13)    NOT NULL,
    member_birth    DATE    NOT NULL,
    member_zip  CHAR(5),
    member_address_basic    varchar(600),
    member_address_detail   varchar(300),
    member_joindate DATE DEFAULT NOW() NOT NULL
);

INSERT INTO member VALUES
('javacan', '#Abcd1234', '자바맨', '홍길동', 'm', 'abcd@abcd.com',
'010-1234-5678', '1990-01-01', '12345','서울 금천구 가산',
'대륭 3차 11층', NOW());

SELECT *
FROM member 
WHERE member_name LIKE '%순%'
ORDER BY member_id ASC
LIMIT 0, 10;

-- 해당 날짜 요일 확인
-- %w(소문자) : 숫자 5 출력됨
SELECT DATE_FORMAT('2021-04-02','%W','ko_KR');