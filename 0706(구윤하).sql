--1������
create table �йݹ�ȣ
(
    �й� number,
    �г� number,
    �� number,
    ��ȣ number,
    primary key(�й�, �г�, ��)
);
insert into �йݹ�ȣ values(1101, 1, 1, 1);
insert into �йݹ�ȣ values(1102, 1, 1, 2);
insert into �йݹ�ȣ values(1103, 1, 1, 3);
insert into �йݹ�ȣ values(1201, 1, 2, 1);
insert into �йݹ�ȣ values(1202, 1, 2, 2);
insert into �йݹ�ȣ values(1203, 1, 2, 3);
insert into �йݹ�ȣ values(1301, 1, 3, 1);
insert into �йݹ�ȣ values(1302, 1, 3, 2);
insert into �йݹ�ȣ values(1303, 1, 3, 3);
insert into �йݹ�ȣ values(1401, 1, 4, 1);
insert into �йݹ�ȣ values(1402, 1, 4, 2);
insert into �йݹ�ȣ values(1403, 1, 4, 3);
insert into �йݹ�ȣ values(2101, 2, 1, 1);
insert into �йݹ�ȣ values(2102, 2, 1, 2);
insert into �йݹ�ȣ values(2103, 2, 1, 3);
insert into �йݹ�ȣ values(2201, 2, 2, 1);
insert into �йݹ�ȣ values(2202, 2, 2, 2);
insert into �йݹ�ȣ values(2203, 2, 2, 3);
insert into �йݹ�ȣ values(2301, 2, 3, 1);
insert into �йݹ�ȣ values(2302, 2, 3, 2);
insert into �йݹ�ȣ values(2303, 2, 3, 3);
insert into �йݹ�ȣ values(2401, 2, 4, 1);
insert into �йݹ�ȣ values(2402, 2, 4, 2);
insert into �йݹ�ȣ values(2403, 2, 4, 3);
--drop table �йݹ�ȣ;

create table �л�
(
    �̸� varchar2(20),
    ���� varchar2(20),
    �й� number,
    �г� number,
    �� number,
    foreign key(�й�, �г�, ��) references �йݹ�ȣ(�й�, �г�, ��)
);
insert into �л� values('��*��', '��', 1101, 1, 1);
insert into �л� values('��*��', '��', 1102, 1, 1);
insert into �л� values('��*��', '��', 1103, 1, 1);
insert into �л� values('��*��', '��', 1201, 1, 2);
insert into �л� values('��*��', '��', 1202, 1, 2);
insert into �л� values('��*��', '��', 1203, 1, 2);
insert into �л� values('��*��', '��', 1301, 1, 3);
insert into �л� values('��*��', '��', 1302, 1, 3);
insert into �л� values('��*��', '��', 1303, 1, 3);
insert into �л� values('��*��', '��', 1401, 1, 4);
insert into �л� values('��*��', '��', 1402, 1, 4);
insert into �л� values('��*��', '��', 1403, 1, 4);
insert into �л� values('��*��', '��', 2101, 2, 1);
insert into �л� values('��*��', '��', 2102, 2, 1);
insert into �л� values('��*��', '��', 2103, 2, 1);
insert into �л� values('��*��', '��', 2201, 2, 2);
insert into �л� values('��*��', '��', 2202, 2, 2);
insert into �л� values('��*��', '��', 2203, 2, 2);
insert into �л� values('��*��', '��', 2301, 2, 3);
insert into �л� values('��*��', '��', 2302, 2, 3);
insert into �л� values('��*��', '��', 2303, 2, 3);
insert into �л� values('��*��', '��', 2401, 2, 4);
insert into �л� values('��*��', '��', 2402, 2, 4);
insert into �л� values('��*��', '��', 2403, 2, 4);
--drop table �л�;

create table ����
(
    �а� varchar2(50),
    �й� number,
    �г� number,
    �� number,
    foreign key(�й�, �г�, ��) references �йݹ�ȣ(�й�, �г�, ��)
);
insert into ���� values('-', 1101, 1, 1);
insert into ���� values('-', 1102, 1, 1);
insert into ���� values('-', 1103, 1, 1);
insert into ���� values('-', 1201, 1, 2);
insert into ���� values('-', 1202, 1, 2);
insert into ���� values('-', 1203, 1, 2);
insert into ���� values('-', 1301, 1, 3);
insert into ���� values('-', 1302, 1, 3);
insert into ���� values('-', 1303, 1, 3);
insert into ���� values('-', 1401, 1, 4);
insert into ���� values('-', 1402, 1, 4);
insert into ���� values('-', 1403, 1, 4);
insert into ���� values('����Ʈ����߰�', 2101, 2, 1);
insert into ���� values('����Ʈ����߰�', 2102, 2, 1);
insert into ���� values('����Ʈ����߰�', 2103, 2, 1);
insert into ���� values('����Ʈ����߰�', 2201, 2, 2);
insert into ���� values('����Ʈ����߰�', 2202, 2, 2);
insert into ���� values('����Ʈ����߰�', 2203, 2, 2);
insert into ���� values('�Ӻ�������Ʈ�����', 2301, 2, 3);
insert into ���� values('�Ӻ�������Ʈ�����', 2302, 2, 3);
insert into ���� values('�Ӻ�������Ʈ�����', 2303, 2, 3);
insert into ���� values('�Ӻ�������Ʈ�����', 2401, 2, 4);
insert into ���� values('�Ӻ�������Ʈ�����', 2402, 2, 4);
insert into ���� values('�Ӻ�������Ʈ�����', 2403, 2, 4);
--drop table ����;

create table ����
(
    ���� varchar2(20),
    �δ��� varchar2(20),
    �й� number,
    �г� number,
    �� number,
    foreign key(�й�, �г�, ��) references �йݹ�ȣ(�й�, �г�, ��)
);
insert into ���� values('��*��', '��*��', 1101, 1, 1);
insert into ���� values('��*��', '��*��', 1102, 1, 1);
insert into ���� values('��*��', '��*��', 1103, 1, 1);
insert into ���� values('��*��', '��*��', 1201, 1, 2);
insert into ���� values('��*��', '��*��', 1202, 1, 2);
insert into ���� values('��*��', '��*��', 1203, 1, 2);
insert into ���� values('��*��', '��*��', 1301, 1, 3);
insert into ���� values('��*��', '��*��', 1302, 1, 3);
insert into ���� values('��*��', '��*��', 1303, 1, 3);
insert into ���� values('��*��', '��*��', 1401, 1, 4);
insert into ���� values('��*��', '��*��', 1402, 1, 4);
insert into ���� values('��*��', '��*��', 1403, 1, 4);
insert into ���� values('��*��', '��*��', 2101, 2, 1);
insert into ���� values('��*��', '��*��', 2102, 2, 1);
insert into ���� values('��*��', '��*��', 2103, 2, 1);
insert into ���� values('��*��', '��*��', 2201, 2, 2);
insert into ���� values('��*��', '��*��', 2202, 2, 2);
insert into ���� values('��*��', '��*��', 2203, 2, 2);
insert into ���� values('��*��', '��*��', 2301, 2, 3);
insert into ���� values('��*��', '��*��', 2302, 2, 3);
insert into ���� values('��*��', '��*��', 2303, 2, 3);
insert into ���� values('��*��', '��*��', 2401, 2, 4);
insert into ���� values('��*��', '��*��', 2402, 2, 4);
insert into ���� values('��*��', '��*��', 2403, 2, 4);
--drop table ����;


--2������
select �йݹ�ȣ.�г� as �г�, �йݹ�ȣ.�� as ��, �йݹ�ȣ.��ȣ as ��ȣ, �л�.�̸� as �̸�, �л�.���� as ����, ����.�а� as �а�, ����.���� as ����, ����.�δ��� as �δ���
from �йݹ�ȣ, �л�, ����, ����
where �йݹ�ȣ.�й�=�л�.�й� and �йݹ�ȣ.�й�=����.�й� and �йݹ�ȣ.�й�=����.�й�;