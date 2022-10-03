-- CREATE ��
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
-- references: �����ϴ�
-- on delete cascade : �����ϰ� �ִ� ���̺��� �⺻Ű�� ������� �����ϴ� �ܷ�Ű ���� ���� �������.
-- on delete set null : �����ϰ� �ִ� ���̺��� �⺻Ű�� ������� �����ϴ� �ܷ�Ű ���� null�� ���Եȴ�.

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

-- not null �������� : �����͸� ������ �� �ش� �Ӽ����� null�� ���� �ȵ�.
-- unique �������� : �ش� �Ӽ����� ������ �ΰ� �̻��� ���� ���� �ȵ�.
-- default �������� : ���� ����ڰ� �� �������� null�� �����Ϸ��� �ϸ� default �������� ���� ���� �ڵ����� �����Ѵ�.
-- check �������� : �Ӽ����� �������� ����(�Ӽ����� ������ �����Ѵ�.)

ALTER TABLE NewBook
RENAME CONSTRAINT SYS_C008553 TO NewBook_PK;

-- ���ڿ� �ڷ��� : char(n byte), varchar(n byte), varchar2(n byte)
-- char : ������ �ڷ���, �� ���ڸ� �־ ��� ���� ���
-- varchar, vachar2 : ������ �ڷ���, �� ���ڷ� ��ҿ� ���� ����
-- varchar2 : varchar�� ���� ȣȯ ����