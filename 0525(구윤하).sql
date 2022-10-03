--12-1번문제
create table Salesperson
(
    name varchar2(40),
    age number,
    salary number,
    PRIMARY KEY(name)
);
insert into Salesperson values('권순영', 27, 10000);
insert into Salesperson values('이지훈', 31, 20000);
insert into Salesperson values('김민규', 26, 50000);

create table Orderr
(
    numbers number,
    custname varchar2(40),
    salesperson varchar2(40),
    amount number,
    PRIMARY KEY(custname, salesperson),
    foreign key(custname) references Customers(name),
    foreign key(salesperson) references Salesperson(name)
);
insert into Orderr values(1, 'TOM', '권순영', 2);
insert into Orderr values(2, 'SAM', '김민규', 1);
insert into Orderr values(3, 'TOM', '이지훈', 3);

create table Customers
(
    name varchar2(40),
    city varchar2(40),
    industrytype varchar2(40),
    primary key(name)
);
insert into Customers values('TOM', 'BUSANS', '사장');
insert into Customers values('SAM', 'LA', '무직');
insert into Customers values('LISA', 'TOKYO', '알바');

drop table Salesperson;
drop table Orderr;
drop table Customers;

--12-2번문제
select DISTINCT name, salary from salesperson;

--12-3번문제
select name from salesperson
where age<30;

--12-4번문제
select name from customers
where city like '%S';

select * from customers;

--12-5번문제
select count(*) from orderr;

--12-6번문제
select salesperson, count(*) from orderr
group by salesperson;

--12-7번문제
select name, age from salesperson
where name like (select salesperson from orderr
               where custname like (select name from customers
                                   where city like 'LA'));

--12-8번문제
select name, age from salesperson, orderr, customers
where customers.names=orderr.custname and salesperson.name=orderr.salesperson and city like 'LA';

--12-9번문제
select name from salesperson
where 2<=(select count(salesperson) from orderr
          where orderr.salesperson=salesperson.name);

--12-10번문제
update salesperson
set salary='45000'
where name like 'TOM';









