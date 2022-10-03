--���� �Լ�
select abs(-15) from dual;
--���:15, ����
select ceil(15.7) from dual;
--���:16, �ø���
select power(3, 2) from dual;
--���:9, ����
select round(15.7) from dual;
--���:16, �ݿø�
select concat('HAPPY', 'Birthday') from dual;
--���:HAPPYBirthday, ���� ����
select lpad('Page 1', 15, '*') from dual;
--���:*********Page 1, �ڿ��� ���� ���ڿ��� ��(���� �ʰ��з��� ������ *�� ä��)
select ltrim('Page 1', 'ae') from dual;
--���:Page 1, ������ ���ڰ� �տ� ������ �� ���ڸ� ��� X
select replace('JACK', 'J', 'BL') from dual;
--���:BLACK, J�� BL�� �ٲ�
select rpad('Page 1', '15', '*') from dual;
--���:Page 1*********, �տ��� ���� ���ڿ��� �� ����(���� �ʰ��з��� ������ *�� ä��)
select rtrim('Page 1', 'ae') from dual;
--���:Page 1, ������ ���ڰ� �ڿ� ������ �� ���ڸ� ��� X
select substr('ABCEFG', 3, 4) from dual;
--���:CDEF, 3��°���� 4��°���� ������ ���� ���
select ascii('A') from dual;
--���:65, �ƽ�Ű�ڵ�
select instr('CORPORATE FLOOR', 'OR', 3, 2) from dual;
--���:14, 3��°���� 2��°�� ������ OR�� ���
select sysdate from dual;
--���:22/06/22, ���� ��¥ ���
select nullif(123, 345) from dual;
--���:123, �� ���� ������ null ���
select nvl(null, 123) from dual;
--���:123, null�� ���� ���, �׷��� �켱������ ���ڰ� ���� ���

--��(view) ���̺�
--���� ���� ���̺�(������ ���̺�)
--Ư¡ 1)���� �Ұ�(��ġ ���� ���̺��� �ѱ� �����̶�� �� ���̺��� PDF)
--Ư¡ 2)���� �����ְ� ���� ������ ���� �����ؼ� ������ �� �ִ�(���ȼ� ���)

--���� create view ���̸�(���� �����ְ� ���� �� �̸�)
--    as select�� ����


--����1. book ���̺��� '�౸'��� ������ ���Ե� �ڷḸ �����ִ� �並 ������
create view sc_book
as select *
    from book
    where bookname like '%�౸%';
    
select * from sc_book;

--����2. �ּҿ� '���ѹα�'�� �����ϴ� ����� ������ �並 ����� ��ȸ�Ͻÿ�
create view k_ad
as select *
    from customer
    where address like '���ѹα�%';
    
select * from k_ad;

--����3. ������ ��� �̸��� *�� �ٲ� �並 ����� ��ȸ�Ͻÿ�
insert into customer values(6, '���̰�', '���ѹα� �λ�', null);

create view vw_name
as select custid, concat(substr(name, 1, 1), concat('*', substr(name, 3, 1))) as name ,address, phone
from customer;

select * from customer;
drop view vw_name;
select * from vw_name;