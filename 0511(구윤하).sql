--ALTER��
drop table newbook;
drop table newcustomer;
drop table neworder;

create table NewBook
(
    bookid number,
    bookname varchar2(20),
    publisher varchar2(20),
    price number,
);
select * from newbook;

--ALTER�� �⺻ ����
--ALTER TABLE ���̺��̸�


--ALTER �Ӽ� �߰� �⺻ ����
--ALTER TABLE ���̺��̸� ADD �Ӽ��̸� �ڷ���;

--1������ : newbook ���̺� varchar2(13)�� �ڷ����� ���� isbn �Ӽ��� �߰��Ͻÿ�.
alter table newbook ADD isbn varchar2(13);


--ALTER �Ӽ� ���� �⺻ ����
--ALTER TABLE ���̺��̸� MODIFY �Ӽ��̸� �ٲٰ����ϴ� Ÿ��;

--2������ : newbook ���̺� isbn �Ӽ��� �ڷ����� number������ �����Ͻÿ�.
alter table newbook modify isbn number;


--ALTER �Ӽ� ���� �⺻ ����
--ALTER TABLE ���̺��̸� DROP COLUMN �Ӽ��̸�;

--3������ : newbook ���̺��� isbn �Ӽ��� �����Ͻÿ�.
alter table newbook drop column isbn;
--4������ : newbook ���̺��� bookid �Ӽ��� not null ���������� �����Ͻÿ�.
alter table newbook modify bookid number not null;
--5������ : newbook ���̺��� bookid �Ӽ��� �⺻Ű�� �����Ͻÿ�.
alter table newbook add primary key(bookid);


--INSERT�� �⺻ ����
--INSERT INTO ���̺��̸�(�����ϰ��� �ϴ� �Ӽ���1, �Ӽ���2... ��ü�Ӽ����� �� �ʿ��ϸ� ��������)
--    VALUES(���� ���� (���� ���� �Ӽ��� ������ ���ƾ� ��))

--1������ : BOOK ���̺� ���ο� ���� '������ ����'�� �����Ͻÿ�. ������ ������ �Ѽ����м������� �Ⱓ������ ������ 90,000���̴�.
insert into book
    values(11, '������ ����', '�Ѽ����м���', 90000);
select * from book;
--2������ : BOOK ���̺� ���ο� ���� '������ ����'�� �����Ͻÿ�. ������ ������ �Ѽ����м������� �Ⱓ������ ������ �����̴�.
insert into book(bookid, bookname, publisher, price)
    values(12, '������ ����', '�Ѽ����м���', null);
    --������ null���� ��� �ǰ� �� ��� �ȴ�.
    --�Ӽ����� ������ �������. ��, �Ӽ��� ������ �°� ���� �־��ش�.
select * from imported_book;
--3������ : ���Ե��� ���(imported_book)�� book ���̺� ��� �����Ͻÿ�.
insert into book(bookid, bookname, price, publisher)
    select bookid, bookname, price, publisher
    from imported_book;
    --select�� insert into �ϴ� ���� : �����ϰ��� �ϴ� ���̺��� �ڷ����� select �ϴ� �ڷ����� ��ġ�ؾ� �Ѵ�.


--UPDATE�� �⺻ ����(�̸� ���Ե� �ִ� ������ ���� �����ϴ� ��)
--UPDATE ���̺��̸�
--SET �Ӽ� �̸�='�Ӽ���'
--WHERE ����

--1������ : CUSTOMER ���̺��� ����ȣ�� 5�� ���� �ּҸ� '���ѹα� �λ�'���� �����Ͻÿ�.
select * from customer;
update customer
set address='���ѹα� �λ�'
WHERE custid=5;
--= : ���ڰ� ��, LIKE : ���ڿ� ��

--2������ : customer ���̺��� �ڼ��� ���� �ּҸ� �迬�� ���� �ּҷ� �����Ͻÿ�.
update customer
set address = (select address from customer where name = '�迬��')
WHERE name = '�ڼ���';


--DELETE�� �⺻ ����(���� ���Ե� �ִ� �����͸� ������ �� ���)
--DELETE
--FROM ���̺��̸�
--WHERE ����

--1������ : customer ���̺��� ����ȣ�� 5�� ���� ������ �� ��� Ȯ��
select * from customer;
delete
from customer
where custid=5;

--2������ : customer ���̺��� ��� ���� �����Ͻÿ�
delete from customer;

rollback;
--rollback : �����͸� ���󺹱�, commit�� �ϱ� ������ rollback���� �����͸� �ǵ��� �� �ִ�.
commit;
--commit�� �̹� �ϸ� rollback�� �ص� �����͸� �ǵ��� �� X, �̹� �����ͺ��̽��� �����ݿ��� �Ǿ���.