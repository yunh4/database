--1번문제
create table 학반번호
(
    학반 number,
    학년 number,
    반 number,
    번호 number,
    primary key(학반, 학년, 반)
);
insert into 학반번호 values(1101, 1, 1, 1);
insert into 학반번호 values(1102, 1, 1, 2);
insert into 학반번호 values(1103, 1, 1, 3);
insert into 학반번호 values(1201, 1, 2, 1);
insert into 학반번호 values(1202, 1, 2, 2);
insert into 학반번호 values(1203, 1, 2, 3);
insert into 학반번호 values(1301, 1, 3, 1);
insert into 학반번호 values(1302, 1, 3, 2);
insert into 학반번호 values(1303, 1, 3, 3);
insert into 학반번호 values(1401, 1, 4, 1);
insert into 학반번호 values(1402, 1, 4, 2);
insert into 학반번호 values(1403, 1, 4, 3);
insert into 학반번호 values(2101, 2, 1, 1);
insert into 학반번호 values(2102, 2, 1, 2);
insert into 학반번호 values(2103, 2, 1, 3);
insert into 학반번호 values(2201, 2, 2, 1);
insert into 학반번호 values(2202, 2, 2, 2);
insert into 학반번호 values(2203, 2, 2, 3);
insert into 학반번호 values(2301, 2, 3, 1);
insert into 학반번호 values(2302, 2, 3, 2);
insert into 학반번호 values(2303, 2, 3, 3);
insert into 학반번호 values(2401, 2, 4, 1);
insert into 학반번호 values(2402, 2, 4, 2);
insert into 학반번호 values(2403, 2, 4, 3);
--drop table 학반번호;

create table 학생
(
    이름 varchar2(20),
    성별 varchar2(20),
    학반 number,
    학년 number,
    반 number,
    foreign key(학반, 학년, 반) references 학반번호(학반, 학년, 반)
);
insert into 학생 values('강*석', '남', 1101, 1, 1);
insert into 학생 values('김*민', '남', 1102, 1, 1);
insert into 학생 values('김*찬', '남', 1103, 1, 1);
insert into 학생 values('강*제', '남', 1201, 1, 2);
insert into 학생 values('강*훈', '남', 1202, 1, 2);
insert into 학생 values('권*빈', '남', 1203, 1, 2);
insert into 학생 values('고*영', '여', 1301, 1, 3);
insert into 학생 values('김*건', '남', 1302, 1, 3);
insert into 학생 values('김*우', '남', 1303, 1, 3);
insert into 학생 values('강*빈', '남', 1401, 1, 4);
insert into 학생 values('구*하', '여', 1402, 1, 4);
insert into 학생 values('권*원', '남', 1403, 1, 4);
insert into 학생 values('김*서', '남', 2101, 2, 1);
insert into 학생 values('김*울', '여', 2102, 2, 1);
insert into 학생 values('박*은', '여', 2103, 2, 1);
insert into 학생 values('권*서', '남', 2201, 2, 2);
insert into 학생 values('김*민', '남', 2202, 2, 2);
insert into 학생 values('김*현', '남', 2203, 2, 2);
insert into 학생 values('권*욱', '남', 2301, 2, 3);
insert into 학생 values('김*형', '남', 2302, 2, 3);
insert into 학생 values('김*현', '남', 2303, 2, 3);
insert into 학생 values('김*수', '남', 2401, 2, 4);
insert into 학생 values('김*진', '여', 2402, 2, 4);
insert into 학생 values('김*은', '여', 2403, 2, 4);
--drop table 학생;

create table 전공
(
    학과 varchar2(50),
    학반 number,
    학년 number,
    반 number,
    foreign key(학반, 학년, 반) references 학반번호(학반, 학년, 반)
);
insert into 전공 values('-', 1101, 1, 1);
insert into 전공 values('-', 1102, 1, 1);
insert into 전공 values('-', 1103, 1, 1);
insert into 전공 values('-', 1201, 1, 2);
insert into 전공 values('-', 1202, 1, 2);
insert into 전공 values('-', 1203, 1, 2);
insert into 전공 values('-', 1301, 1, 3);
insert into 전공 values('-', 1302, 1, 3);
insert into 전공 values('-', 1303, 1, 3);
insert into 전공 values('-', 1401, 1, 4);
insert into 전공 values('-', 1402, 1, 4);
insert into 전공 values('-', 1403, 1, 4);
insert into 전공 values('소프트웨어개발과', 2101, 2, 1);
insert into 전공 values('소프트웨어개발과', 2102, 2, 1);
insert into 전공 values('소프트웨어개발과', 2103, 2, 1);
insert into 전공 values('소프트웨어개발과', 2201, 2, 2);
insert into 전공 values('소프트웨어개발과', 2202, 2, 2);
insert into 전공 values('소프트웨어개발과', 2203, 2, 2);
insert into 전공 values('임베디드소프트웨어과', 2301, 2, 3);
insert into 전공 values('임베디드소프트웨어과', 2302, 2, 3);
insert into 전공 values('임베디드소프트웨어과', 2303, 2, 3);
insert into 전공 values('임베디드소프트웨어과', 2401, 2, 4);
insert into 전공 values('임베디드소프트웨어과', 2402, 2, 4);
insert into 전공 values('임베디드소프트웨어과', 2403, 2, 4);
--drop table 전공;

create table 교사
(
    담임 varchar2(20),
    부담임 varchar2(20),
    학반 number,
    학년 number,
    반 number,
    foreign key(학반, 학년, 반) references 학반번호(학반, 학년, 반)
);
insert into 교사 values('구*영', '이*숙', 1101, 1, 1);
insert into 교사 values('구*영', '이*숙', 1102, 1, 1);
insert into 교사 values('구*영', '이*숙', 1103, 1, 1);
insert into 교사 values('조*겸', '진*빈', 1201, 1, 2);
insert into 교사 values('조*겸', '진*빈', 1202, 1, 2);
insert into 교사 values('조*겸', '진*빈', 1203, 1, 2);
insert into 교사 values('김*영', '김*정', 1301, 1, 3);
insert into 교사 values('김*영', '김*정', 1302, 1, 3);
insert into 교사 values('김*영', '김*정', 1303, 1, 3);
insert into 교사 values('유*찬', '김*필', 1401, 1, 4);
insert into 교사 values('유*찬', '김*필', 1402, 1, 4);
insert into 교사 values('유*찬', '김*필', 1403, 1, 4);
insert into 교사 values('차*민', '이*영', 2101, 2, 1);
insert into 교사 values('차*민', '이*영', 2102, 2, 1);
insert into 교사 values('차*민', '이*영', 2103, 2, 1);
insert into 교사 values('박*현', '최*준', 2201, 2, 2);
insert into 교사 values('박*현', '최*준', 2202, 2, 2);
insert into 교사 values('박*현', '최*준', 2203, 2, 2);
insert into 교사 values('김*태', '정*진', 2301, 2, 3);
insert into 교사 values('김*태', '정*진', 2302, 2, 3);
insert into 교사 values('김*태', '정*진', 2303, 2, 3);
insert into 교사 values('김*봉', '서*희', 2401, 2, 4);
insert into 교사 values('김*봉', '서*희', 2402, 2, 4);
insert into 교사 values('김*봉', '서*희', 2403, 2, 4);
--drop table 교사;


--2번문제
select 학반번호.학년 as 학년, 학반번호.반 as 반, 학반번호.번호 as 번호, 학생.이름 as 이름, 학생.성별 as 성별, 전공.학과 as 학과, 교사.담임 as 담임, 교사.부담임 as 부담임
from 학반번호, 학생, 교사, 전공
where 학반번호.학반=학생.학반 and 학반번호.학반=교사.학반 and 학반번호.학반=전공.학반;