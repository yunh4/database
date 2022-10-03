--1������
create table MyUser
(
    USER_SEQ number,
    ID varchar2(20),
    USER_NAME varchar2(20),
    DATETIME date,
    primary key(USER_SEQ)
);
insert into MyUser values(1, 'lee1545', '�̼���', to_date('22-05-04', 'YY-MM-DD'));
insert into MyUser values(2, 'lee1502', '��Ȳ', to_date('22-05-01', 'YY-MM-DD'));
insert into MyUser values(3, 'lee1536', '����', to_date('22-05-02', 'YY-MM-DD'));
insert into MyUser values(4, 'lee1597', '�������', to_date('22-05-03', 'YY-MM-DD'));
insert into MyUser values(5, 'shin1504', '�Ż��Ӵ�', to_date('22-05-05', 'YY-MM-DD'));

--2������
create table Category
(
    CATEGORY_SEQ number,
    NAME varchar2(20),
    primary key(CATEGORY_SEQ)
);
insert into category values(1, '����');
insert into category values(2, '����');
insert into category values(3, '��ȭ����');

--3������
create table POST
(
    POST_SEQ number primary key,
    CATEGORY_SEQ number,
    USER_SEQ number,
    TITLE varchar2(40),
    CONTENT varchar2(4000),
    DATETIME date,
    foreign key(CATEGORY_SEQ) references Category(CATEGORY_SEQ),
    foreign key(USER_SEQ) references MyUser(USER_SEQ)
);
insert into POST values(1, 1, 1, '������ ����', '�⺻�� ���翡�� ������������ ������ ��ġ�� ���(�ɼ� Ŭ�ο�)�� �������� ����ġ�� ��ġ�� 2���� �Ͽ� ��ȸ�� ������ ������ �����ϴ� ����̴�. �ѴϹ� �ٸ�ī�� ĭ���� �������� ����� �⵿ �⸶�� 2�δ븦 �̿��ϰ� �ڽ��� �������� ������� ���� ����Ͽ� �¸��� �ŵ״� �����̴�. �����ε��� �̸� ���� ���������� �θ����� ���� ������ �⺻�� ���񱺴� 2���� �߰��� ����Ͽ� �������� �ϼ���Ų ���´�. ��, �̰��� �������� ����� �⸶���� �⵿���� �̿��� ������ �����̶� ���̴�.', to_date('1592-08-14', 'YYYY-MM-DD'));
insert into POST values(2, 3, 4, '�ƹ�����', '�ƹ�����(��������)�� �鼺�� ����ġ�� �ٸ� �Ҹ���� ���̴�. �ƹ������̶�� �θ��� ����� �� ������ �ִµ�, �� �ϳ��� 1443�� ���� 12��(��� 1444�� 1��)�� ��������� ���� �ѱ����� ǥ�� ü��, �� ���ó��� �ѱ��� â�� ��ÿ� �θ� �̸��̰�, �� �ϳ��� 1446�� 9��[1]�� �߰��� å �̸��̴�. ���⼭�� ����, �� �ƹ������̶�� å�� �����Ѵ�.', to_date('1446-10-09', 'YYYY-MM-DD'));
insert into POST values(3, 1, 5, '�Ż��Ӵ翡 ����', '�Ż��Ӵ� [��������, 1504~1551] ������ ���(��ߣ)�̰�, ȣ�� ���Ӵ�(������:������:������)�����Ӵ�(�����)���ӻ���(�����)�̴�. ������ ����(˰��) ����̸�, ���� ����(���)�� ��Ӵ��̴�. ȿ���� �����ϰ� ������ �������� ��������� �湮(����)�� ������ ���塤ħ��(����)���ڼ�(��)�� ��������, Ư�� �ù�(����)�� �׸��� �پ ���� ���� �ѽ�(����) ��ǰ�� ��������. ���� �Ȱ�(��̱)�� ������ ���� ȭǳ(����)�� ���� Ư���� ���� �������� ���Ͽ� �ѱ� ������ ����ȭ����� ���� ��´�. ���(ߣ�)��������Ǯ������ ���� �� �׷ȴ�. �ڳ౳������ ���ٸ� ����� ��￩ �����ó(��ٽ����)�� �Ͱ�(Т��)�� �Ǿ���. ������ ��Ӵ��̴�.', to_date('1504-10-29', 'YYYY-MM-DD'));
insert into POST values(4, 2, 3, '�ʸ��纴��', '���̴� �������� 10�� �纴���� �����Ͽ� ������ �ݰ��� ��⵵ �Ͽ���.[19] �״� �Ϻ��� �����ô�� ����� ���̸�, �Ϻ��� ������ ����� �Ϻ� �� ���� �� ���� ��ȭ�� ���� ���ɻ縦 �ٸ� ������ ������ ���� �������� �̱��� ���� ������ ħ���� ���̶�� �����ߴ�. �Ϻ��� ���߿� ���� �������� �״� 10�� ���� ������ �缺�Ͽ� �Ϻ��� ħ���� ����� ���� �����Ͽ���. �׷��� ���� �̷��� ���ش� ���ο� ���� ���� ��Ȥ�ϱ� ���� �߾����� ġ�εǾ���, �������� ���� ������ ����ģ ���°� ����̶�� ȣ�������� �ʾҴ�. ���̰� 10�� �纴���� �����ϴ� ���, ������ �� ���¼��� ��λ����δ� 30�� ���� �Ѿ�����, ���� ���� ������ ���� ���ڴ� 1,000�� ������ �Ǿ��ٰ� �Ѵ�.[20] 1581�� ������ ���� �� �������� �����ϴ� ���濬�ϱ⡷�� �ϼ��� ���Ҵ�. �Ż��Ӵ��� �Ƶ��̴�.', to_date('1583-01-01', 'YYYY-MM-DD'));

drop table Mycomment;
drop table post;
--4������
create table MyComment
(
    COMMENT_SEQ number primary key,
    POST_SEQ number,
    USER_SEQ number,
    CONTENT varchar2(4000),
    DATETIME date,
    PARENT number,
    foreign key(POST_SEQ) references Post(POST_SEQ),
    foreign key(USER_SEQ) references MyUser(USER_SEQ),
    foreign key(PARENT) references MyComment(COMMENT_SEQ)
);
insert into MyComment values(1, 1, 2, '�ѻ굵 ��ø(��ߣ������) Ȥ�� �߳�����ø(̸Ҭ������)�� 1592�� 8�� 14��(���� 25�� ���� 7�� 8��) �뿵 �ѻ굵 �չٴٿ��� ���� ������ �ֱ��� ũ�� ��� ����', to_date('22-05-01', 'YY-MM-DD'), null);
insert into MyComment values(2, 1, 3, '�� �������� �������� ����ϴ� ���� ���� ���� ������ �������� ó������ �������� ���ƴ�.', to_date('22-05-01', 'YY-MM-DD'), 1);
insert into MyComment values(3, 3, 2, '������ ��Ӵ� �Ż��Ӵ�', to_date('22-05-01', 'YY-MM-DD'), null);
insert into MyComment values(4, 2, 1, '�����ٶ󸶹ٻ�', to_date('22-05-01', 'YY-MM-DD'), null);

--5������

--6������
select name from category;

--7������
select COMMENT_SEQ, CONTENT, PARENT
from MyComment
where parent is not null;

--8������
select content, id, user_name
from post
join myuser m on m.user_seq=post.user_seq
where post.content like '%�Ż��Ӵ�%' or m.user_name like '%�Ż��Ӵ�%';

--9������
select c.name, p.post_seq, p.title, m.user_name, to_char(p.datetime, 'YYYY/MM/DD'), count(*)
from post p
join category c on c.category_seq=p.category_seq
join myuser m on m.user_seq=p.user_seq
join mycomment my on my.post_seq=p.post_seq
group by c.name, p.post_seq, p.title, m.user_name, p.datetime;

--10������
update category
set category_seq = 3
where name like '��ȭ����';



