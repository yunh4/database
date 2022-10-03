create table 극장
(
    극장번호 number,
    극장이름 varchar2(40),
    위치 varchar2(40),
    primary key(극장번호)
);
insert into 극장
    values(1, '롯데', '잠실');
insert into 극장
    values(2, '메가', '강남');
insert into 극장
    values(3, '대한', '잠실');


create table 상영관
(
    극장번호 number,
    상영관번호 number check(상영관번호 between 1 and 10),
    영화제목 varchar2(40),
    가격 number check(가격<=20000),
    좌석수 number,
    primary key(극장번호, 상영관번호),
    foreign key(극장번호) references 극장(극장번호)
);
insert into 상영관
    values(1, 1, '어려운 영화', 15000, 48);
insert into 상영관
    values(3, 1, '멋진 영화', 7500, 120);
insert into 상영관
    values(3, 2, '재밌는 영화', 8000, 110);


create table 예약
(
    극장번호 number,
    상영관번호 number check(상영관번호 between 1 and 10),
    고객번호 number,
    좌석번호 number,
    날짜 date,
    primary key(극장번호, 상영관번호, 고객번호),
    foreign key(극장번호) references 극장(극장번호),
    foreign key(극장번호, 상영관번호) references 상영관(극장번호, 상영관번호),
    foreign key(고객번호) references 고객(고객번호)
);
insert into 예약
    values(3, 2, 3, 15, to_date('2020-09-01','YYYY-MM-DD'));
insert into 예약
    values(3, 1, 4, 16, to_date('2020-09-01', 'YYYY-MM-DD'));
insert into 예약
    values(1, 1, 9, 48, to_date('2020-09-01', 'YYYY-MM-DD'));
    
drop table 예약;

create table 고객
(
    고객번호 number,
    이름 varchar2(40),
    주소 varchar2(40),
    primary key(고객번호)
);
insert into 고객
    values(3, '홍길동', '강남');
insert into 고객
    values(4, '김철수', '잠실');
insert into 고객
    values(9, '박영희', '강남');

--1-1번문제
select 극장이름, 위치 from 극장;

--1-2번문제
select * from 극장 where 위치 like '잠실';

--1-3번문제
select 이름 from 고객 where 주소 like '잠실'
order by 이름 asc;

--1-4번문제
select 극장번호, 상영관번호, 영화제목 from 상영관
where 가격<=8000; 

--1-5번문제
select * from 고객
where 주소 in (select 위치 from 극장);

select * from 고객;
select * from 극장;

--2-1번문제
select count(*) from 극장;

--2-2번문제
select avg(가격) from 상영관;

select * from 상영관;

--2-3번문제
select count(고객번호) from 예약
where 날짜= '2020-09-01';

select * from 예약;

--3-1번문제
select 영화제목 from 상영관
where 극장번호 in (select 극장번호 from 극장 where 극장이름 like '대한');

select * from 극장;
select * from 상영관;

--3-2번문제
select 이름 from 고객
where 고객번호 in (select 고객번호 from 예약
                  where 극장번호 in (select 극장번호 from 극장
                  where 극장이름 like '대한'));

select * from 극장;
select * from 고객;
select * from 예약;

--3-3번문제
select sum(가격) from 상영관
where 극장번호 in (select 극장번호 from 극장
                  where 극장이름 like '대한');

select * from 상영관;

--4-1번문제
select 극장번호, count(상영관번호) from 상영관
group by 극장번호;

--4-2번문제
select * from 상영관
where 극장번호 in (select 극장번호 from 극장 where 위치 like '잠실');

--4-3번문제
select 극장번호, count(고객번호) from 예약
where 날짜='2020-09-01'
group by 극장번호;

--4-4문제
select max(상영관.영화제목) from 상영관, 예약
where 상영관.극장번호=예약.극장번호 and 상영관.상영관번호 = 예약.상영관번호 and 예약.날짜='2020-09-01'
group by 상영관.극장번호, 상영관.상영관번호;

--5-1문제
insert into 극장
    values(4, '롯데', '강남');
insert into 상영관
    values(2, 3, '노잼 영화', 10500, 15);
insert into 예약
    values(1, 1, 1, 34, to_date('2020-06-15', 'YYYY-MM-DD'));
insert into 고객
    values(1, '권순영', '마석');
    
drop table 예약;
    
--5-2문제
update 상영관
set 가격=(가격*1.1);