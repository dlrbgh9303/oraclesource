-- no 정수형(4), pk, (pk_userTBL)
-- username 가변형문자열(20) null 허용하지 않음
-- birthyear 정수형(4) null 허용하지 않음
-- addr 가변형 문자열(20) null 허용하지 않음
-- mobile 가변형문자열(20)

CREATE TABLE usertbl (
    no        NUMBER(4)
        CONSTRAINT pk_usertbl PRIMARY KEY,
    username  VARCHAR2(20) NOT NULL,
    birthyear NUMBER(4) NOT NULL,
    addr      VARCHAR2(20) NOT NULL,
    mobile    VARCHAR2(20)
);
    
-- NO : 번호 (순차적인 번호 부여) => 시퀀스 객체
CREATE SEQUENCE user_seq;

-- USER 삽입
INSERT INTO usertbl VALUES (
    user_seq.NEXTVAL,
    '홍길동',
    1985,
    '서울',
    '010-1234-5678'
);
INSERT INTO usertbl VALUES (
    user_seq.NEXTVAL,
    '김지우',
    1993,
    '부산',
    '010-4578-9685'
);
INSERT INTO usertbl VALUES (
    user_seq.NEXTVAL,
    '신동완',
    1990,
    '경기',
    '010-9877-2334'
);


COMMIT;

-- 전체 사용자 조회
select * from userTBL

-- 특정 사용자 조회
select * from userTBL where no =1;

-- 특정 사용자 정보 수정
update userTBL
set addr = '인천'
where no = 1;

-- 특정 사용자 삭제
delete FROM userTBL where no=4;

commit;







