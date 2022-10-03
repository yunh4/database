--12-1������
create table Salesperson
(
    name varchar2(40),
    age number,
    salary number,
    PRIMARY KEY(name)
);
insert into Salesperson values('�Ǽ���', 27, 10000);
insert into Salesperson values('������', 31, 20000);
insert into Salesperson values('��α�', 26, 50000);

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
insert into Orderr values(1, 'TOM', '�Ǽ���', 2);
insert into Orderr values(2, 'SAM', '��α�', 1);
insert into Orderr values(3, 'TOM', '������', 3);

create table Customers
(
    name varchar2(40),
    city varchar2(40),
    industrytype varchar2(40),
    primary key(name)
);
insert into Customers values('TOM', 'BUSANS', '����');
insert into Customers values('SAM', 'LA', '����');
insert into Customers values('LISA', 'TOKYO', '�˹�');

drop table Salesperson;
drop table Orderr;
drop table Customers;

--12-2������
select DISTINCT name, salary from salesperson;

--12-3������
select name from salesperson
where age<30;

--12-4������
select name from customers
where city like '%S';

select * from customers;

--12-5������
select count(*) from orderr;

--12-6������
select salesperson, count(*) from orderr
group by salesperson;

--12-7������
select name, age from salesperson
where name like (select salesperson from orderr
               where custname like (select name from customers
                                   where city like 'LA'));

--12-8������
select name, age from salesperson, orderr, customers
where customers.names=orderr.custname and salesperson.name=orderr.salesperson and city like 'LA';

--12-9������
select name from salesperson
where 2<=(select count(salesperson) from orderr
          where orderr.salesperson=salesperson.name);

--12-10������
update salesperson
set salary='45000'
where name like 'TOM';









