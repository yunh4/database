create table ����
(
    �����ȣ number,
    �����̸� varchar2(40),
    ��ġ varchar2(40),
    primary key(�����ȣ)
);
insert into ����
    values(1, '�Ե�', '���');
insert into ����
    values(2, '�ް�', '����');
insert into ����
    values(3, '����', '���');


create table �󿵰�
(
    �����ȣ number,
    �󿵰���ȣ number check(�󿵰���ȣ between 1 and 10),
    ��ȭ���� varchar2(40),
    ���� number check(����<=20000),
    �¼��� number,
    primary key(�����ȣ, �󿵰���ȣ),
    foreign key(�����ȣ) references ����(�����ȣ)
);
insert into �󿵰�
    values(1, 1, '����� ��ȭ', 15000, 48);
insert into �󿵰�
    values(3, 1, '���� ��ȭ', 7500, 120);
insert into �󿵰�
    values(3, 2, '��մ� ��ȭ', 8000, 110);


create table ����
(
    �����ȣ number,
    �󿵰���ȣ number check(�󿵰���ȣ between 1 and 10),
    ����ȣ number,
    �¼���ȣ number,
    ��¥ date,
    primary key(�����ȣ, �󿵰���ȣ, ����ȣ),
    foreign key(�����ȣ) references ����(�����ȣ),
    foreign key(�����ȣ, �󿵰���ȣ) references �󿵰�(�����ȣ, �󿵰���ȣ),
    foreign key(����ȣ) references ��(����ȣ)
);
insert into ����
    values(3, 2, 3, 15, to_date('2020-09-01','YYYY-MM-DD'));
insert into ����
    values(3, 1, 4, 16, to_date('2020-09-01', 'YYYY-MM-DD'));
insert into ����
    values(1, 1, 9, 48, to_date('2020-09-01', 'YYYY-MM-DD'));
    
drop table ����;

create table ��
(
    ����ȣ number,
    �̸� varchar2(40),
    �ּ� varchar2(40),
    primary key(����ȣ)
);
insert into ��
    values(3, 'ȫ�浿', '����');
insert into ��
    values(4, '��ö��', '���');
insert into ��
    values(9, '�ڿ���', '����');

--1-1������
select �����̸�, ��ġ from ����;

--1-2������
select * from ���� where ��ġ like '���';

--1-3������
select �̸� from �� where �ּ� like '���'
order by �̸� asc;

--1-4������
select �����ȣ, �󿵰���ȣ, ��ȭ���� from �󿵰�
where ����<=8000; 

--1-5������
select * from ��
where �ּ� in (select ��ġ from ����);

select * from ��;
select * from ����;

--2-1������
select count(*) from ����;

--2-2������
select avg(����) from �󿵰�;

select * from �󿵰�;

--2-3������
select count(����ȣ) from ����
where ��¥= '2020-09-01';

select * from ����;

--3-1������
select ��ȭ���� from �󿵰�
where �����ȣ in (select �����ȣ from ���� where �����̸� like '����');

select * from ����;
select * from �󿵰�;

--3-2������
select �̸� from ��
where ����ȣ in (select ����ȣ from ����
                  where �����ȣ in (select �����ȣ from ����
                  where �����̸� like '����'));

select * from ����;
select * from ��;
select * from ����;

--3-3������
select sum(����) from �󿵰�
where �����ȣ in (select �����ȣ from ����
                  where �����̸� like '����');

select * from �󿵰�;

--4-1������
select �����ȣ, count(�󿵰���ȣ) from �󿵰�
group by �����ȣ;

--4-2������
select * from �󿵰�
where �����ȣ in (select �����ȣ from ���� where ��ġ like '���');

--4-3������
select �����ȣ, count(����ȣ) from ����
where ��¥='2020-09-01'
group by �����ȣ;

--4-4����
select max(�󿵰�.��ȭ����) from �󿵰�, ����
where �󿵰�.�����ȣ=����.�����ȣ and �󿵰�.�󿵰���ȣ = ����.�󿵰���ȣ and ����.��¥='2020-09-01'
group by �󿵰�.�����ȣ, �󿵰�.�󿵰���ȣ;

--5-1����
insert into ����
    values(4, '�Ե�', '����');
insert into �󿵰�
    values(2, 3, '���� ��ȭ', 10500, 15);
insert into ����
    values(1, 1, 1, 34, to_date('2020-06-15', 'YYYY-MM-DD'));
insert into ��
    values(1, '�Ǽ���', '����');
    
drop table ����;
    
--5-2����
update �󿵰�
set ����=(����*1.1);