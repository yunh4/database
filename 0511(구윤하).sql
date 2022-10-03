--ALTER문
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

--ALTER문 기본 형식
--ALTER TABLE 테이블이름


--ALTER 속성 추가 기본 형식
--ALTER TABLE 테이블이름 ADD 속성이름 자료형;

--1번문제 : newbook 테이블에 varchar2(13)의 자료형을 가진 isbn 속성을 추가하시오.
alter table newbook ADD isbn varchar2(13);


--ALTER 속성 변경 기본 형식
--ALTER TABLE 테이블이름 MODIFY 속성이름 바꾸고자하는 타입;

--2번문제 : newbook 테이블에 isbn 속성의 자료형을 number형으로 변경하시오.
alter table newbook modify isbn number;


--ALTER 속성 삭제 기본 형식
--ALTER TABLE 테이블이름 DROP COLUMN 속성이름;

--3번문제 : newbook 테이블의 isbn 속성을 삭제하시오.
alter table newbook drop column isbn;
--4번문제 : newbook 테이블의 bookid 속성에 not null 제약조건을 적용하시오.
alter table newbook modify bookid number not null;
--5번문제 : newbook 테이블의 bookid 속성을 기본키로 변경하시오.
alter table newbook add primary key(bookid);


--INSERT문 기본 형식
--INSERT INTO 테이블이름(삽입하고자 하는 속성명1, 속성명2... 전체속성명이 다 필요하면 생략가능)
--    VALUES(값들 적기 (위에 적은 속성의 순서랑 같아야 함))

--1번문제 : BOOK 테이블에 새로운 도서 '스포츠 의학'을 삽입하시오. 스포츠 의학은 한솔의학서적에서 출간했으며 가격은 90,000원이다.
insert into book
    values(11, '스포츠 의학', '한솔의학서적', 90000);
select * from book;
--2번문제 : BOOK 테이블에 새로운 도서 '스포츠 의학'을 삽입하시오. 스포츠 의학은 한솔의학서적에서 출간했으며 가격은 미정이다.
insert into book(bookid, bookname, publisher, price)
    values(12, '스포츠 의학', '한솔의학서적', null);
    --미정은 null값을 적어도 되고 안 적어도 된다.
    --속성명의 순서는 상관없다. 단, 속성명 순서에 맞게 값을 넣어준다.
select * from imported_book;
--3번문제 : 수입도서 목록(imported_book)을 book 테이블에 모두 삽입하시오.
insert into book(bookid, bookname, price, publisher)
    select bookid, bookname, price, publisher
    from imported_book;
    --select로 insert into 하는 조건 : 삽입하고자 하는 테이블의 자료형과 select 하는 자료형이 일치해야 한다.


--UPDATE문 기본 형식(미리 삽입돼 있는 데이터 값을 변경하는 문)
--UPDATE 테이블이름
--SET 속성 이름='속성값'
--WHERE 조건

--1번문제 : CUSTOMER 테이블에서 고객번호가 5인 고객의 주소를 '대한민국 부산'으로 변경하시오.
select * from customer;
update customer
set address='대한민국 부산'
WHERE custid=5;
--= : 숫자값 비교, LIKE : 문자열 비교

--2번문제 : customer 테이블에서 박세리 고객의 주소를 김연아 고객의 주소로 변경하시오.
update customer
set address = (select address from customer where name = '김연아')
WHERE name = '박세리';


--DELETE문 기본 형식(현재 삽입돼 있는 데이터를 삭제할 때 사용)
--DELETE
--FROM 테이블이름
--WHERE 조건

--1번문제 : customer 테이블에서 고객번호가 5인 고객을 삭제한 후 결과 확인
select * from customer;
delete
from customer
where custid=5;

--2번문제 : customer 테이블에서 모든 고객을 삭제하시오
delete from customer;

rollback;
--rollback : 데이터를 원상복귀, commit을 하기 전에는 rollback으로 데이터를 되돌릴 수 있다.
commit;
--commit을 이미 하면 rollback을 해도 데이터를 되돌릴 수 X, 이미 데이터베이스에 최종반영이 되었다.