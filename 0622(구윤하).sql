--내장 함수
select abs(-15) from dual;
--결과:15, 절댓값
select ceil(15.7) from dual;
--결과:16, 올림수
select power(3, 2) from dual;
--결과:9, 제곱
select round(15.7) from dual;
--결과:16, 반올림
select concat('HAPPY', 'Birthday') from dual;
--결과:HAPPYBirthday, 문장 연결
select lpad('Page 1', 15, '*') from dual;
--결과:*********Page 1, 뒤에서 부터 문자열의 수(만약 초과분량이 나오면 *로 채움)
select ltrim('Page 1', 'ae') from dual;
--결과:Page 1, 지정된 문자가 앞에 있으면 그 문자만 출력 X
select replace('JACK', 'J', 'BL') from dual;
--결과:BLACK, J를 BL로 바꿈
select rpad('Page 1', '15', '*') from dual;
--결과:Page 1*********, 앞에서 부터 문자열의 수 세기(만약 초과분량이 나오면 *로 채움)
select rtrim('Page 1', 'ae') from dual;
--결과:Page 1, 지정된 문자가 뒤에 있으면 그 문자만 출력 X
select substr('ABCEFG', 3, 4) from dual;
--결과:CDEF, 3번째부터 4번째까지 나오는 문자 출력
select ascii('A') from dual;
--결과:65, 아스키코드
select instr('CORPORATE FLOOR', 'OR', 3, 2) from dual;
--결과:14, 3번째부터 2번째로 나오는 OR을 출력
select sysdate from dual;
--결과:22/06/22, 현재 날짜 출력
select nullif(123, 345) from dual;
--결과:123, 두 값이 같으면 null 출력
select nvl(null, 123) from dual;
--결과:123, null이 들어가도 출력, 그러나 우선적으로 문자가 먼저 출력

--뷰(view) 테이블
--보기 전용 테이블(가상의 테이블)
--특징 1)수정 불가(마치 기존 테이블이 한글 파일이라면 뷰 테이블은 PDF)
--특징 2)내가 보여주고 싶은 정보만 따로 추출해서 보여줄 수 있다(보안성 우수)

--형식 create view 뷰이름(내가 보여주고 싶은 열 이름)
--    as select문 삽입


--문제1. book 테이블에서 '축구'라는 문구가 포함된 자료만 보여주는 뷰를 만들자
create view sc_book
as select *
    from book
    where bookname like '%축구%';
    
select * from sc_book;

--문제2. 주소에 '대한민국'을 포함하는 고객들로 구성된 뷰를 만들고 조회하시오
create view k_ad
as select *
    from customer
    where address like '대한민국%';
    
select * from k_ad;

--문제3. 고객들의 가운데 이름을 *로 바뀐 뷰를 만들고 조회하시오
insert into customer values(6, '이이경', '대한민국 부산', null);

create view vw_name
as select custid, concat(substr(name, 1, 1), concat('*', substr(name, 3, 1))) as name ,address, phone
from customer;

select * from customer;
drop view vw_name;
select * from vw_name;