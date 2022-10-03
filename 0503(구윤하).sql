-- CREATE 문
CREATE TABLE NewBook
(
    bookid NUMBER PRIMARY KEY,
    bookname VARCHAR2(20) NOT NULL,
    publisher VARCHAR(20) UNIQUE,
    price NUMBER DEFAULT 10000 CHECK(price > 1000)
);

CREATE TABLE NewOrder
(
    orderid NUMBER,
    custid NUMBER NOT NULL,
    bookid NUMBER NOT NULL,
    salepreice NUMBER,
    oderdate DATE,
    PRIMARY KEY(orderid),
    FOREIGN KEY(custid) REFERENCES NewCustomer(custid)
    );
-- references: 참조하다
-- on delete cascade : 참조하고 있는 테이블의 기본키가 사라지면 참조하는 외래키 값도 같이 사라진다.
-- on delete set null : 참조하고 있는 테이블의 기본키가 사라지면 참조하는 외래키 값은 null이 삽입된다.

CREATE TABLE NewCustomer
(
    custid number primary key,
    name varchar2(40),
    address varchar2(40),
    phone varchar2(30)
);

DROP TABLE NewBook;
DROP TABLE NewCustomer;
drop table NewOrder;

-- not null 제약조건 : 데이터를 삽입할 때 해당 속성값에 null이 들어가면 안됨.
-- unique 제약조건 : 해당 속성값에 동일한 두개 이상의 값이 들어가면 안됨.
-- default 제약조건 : 만약 사용자가 그 석성값에 null을 삽입하려고 하면 default 다음으로 넣은 값을 자동으로 삽입한다.
-- check 제약조건 : 속성값의 도메인을 지정(속성값의 범위를 지정한다.)

ALTER TABLE NewBook
RENAME CONSTRAINT SYS_C008553 TO NewBook_PK;

-- 문자열 자료형 : char(n byte), varchar(n byte), varchar2(n byte)
-- char : 고정형 자료형, 한 글자만 넣어도 모든 수가 출력
-- varchar, vachar2 : 가변형 자료형, 한 글자로 축소와 변형 가능
-- varchar2 : varchar의 상위 호환 버전